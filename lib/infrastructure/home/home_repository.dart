import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:feroza/domain/authentication/authentication_failure.dart';
import 'package:feroza/domain/home/i_home_facade.dart';
import 'package:feroza/util/setting.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeFacade)
class HomeRepository implements IHomeFacade {
  final Dio _dio;
  HomeRepository(this._dio);

  ///RestaurantData , MenuData, MenuBookData
  @override
  Future<Either<AuthenticationFailure, List<dynamic>>> getAllMenuData(String latLang) async {
    Future<List> _response;
    try {
      _response = Future.wait(
        [
          _dio.get(Setting().getUrl + "app/v1/api/restaurant",
              queryParameters: {
                "latLang": latLang,
                "page": 1,
                "paginate": 10
              }),
          _dio.get(Setting().getUrl + "app/v1/api/menu?with=restaurants", queryParameters: {
            "latLang": latLang,
            "page": 1,
            "paginate": 10
          }),
          _dio.get(Setting().getUrl + "app/v1/api/menu-book", queryParameters: {
            "latLang": latLang,
            "page": 1,
            "paginate": 10, 
            "include":"restaurant"
          }),
        ],


      );
      final _list = await _response;
      // final _firstData = GetRestaurantListResponse.fromJson(
      //     json.decode(_list.first.toString()));
      // print(_firstData.data);
      return right(_list);
    } on DioError catch (e) {
      return left(AuthenticationFailure.badRequest(e.response.data.toString()));
    }
  }
}
