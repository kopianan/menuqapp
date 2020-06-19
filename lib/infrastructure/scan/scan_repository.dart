import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:feroza/domain/scan/i_scan_facade.dart';
import 'package:feroza/domain/scan/menu.dart';
import 'package:feroza/domain/scan/scan_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IScanFacade)
class ScanRepository implements IScanFacade {
  final Dio _dio;
  ScanRepository(this._dio);

  @override
  Future<Either<ScanFailure, MenuData>> scanQrCode({String code}) async {
    Response _response;

    try {
      print("DIO"); 
      _response = await _dio
          .get("https://menuq.co/app/v1/api/restaurant/" + code);
      final _result = MenuData.fromJson(_response.data['data']);
      print(_result.toJson());
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        switch (e.response.statusCode) {
          case 500:
            return left(ScanFailure.serverError());
            break;
          case 400:
            return left(
                ScanFailure.badRequest(message: e.response.data.toString()));
            break;
          default:
            return left(ScanFailure.serverError());
            break;
        }
      }
      return left(ScanFailure.serverError());
    }
  }
}
