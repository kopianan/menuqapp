import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:feroza/domain/authentication/authentication_failure.dart';
import 'package:feroza/domain/authentication/i_authentication_facade.dart';
import 'package:feroza/infrastructure/core/pref.dart';
import 'package:feroza/util/setting.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthenticationFacade)
class AuthenticationRepository implements IAuthenticationFacade {
  final Dio _dio;
  AuthenticationRepository(this._dio);

  @override
  Future<Either<AuthenticationFailure, String>> registerDevice(
      String imei) async {
    Response _response;
    Pref _pref = Pref();
    print("Data");
    try {
      _response = await _dio.post(
          Setting().getUrl + "app/v1/api/device/register",
          data: {"imei": imei});
      print(_response.toString());
      final _result = _response.data['data']['token'];
      await _pref.saveDeviceToken(_result);
      return right(_result.toString());
    } on DioError catch (e) {
      return left(AuthenticationFailure.badRequest(e.response.data.toString()));
    }
  }
}
