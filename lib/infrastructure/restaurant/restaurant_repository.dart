import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:feroza/domain/restaurant/i_restaurant_facade.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:feroza/domain/restaurant/restaurant_failure.dart';
import 'package:feroza/util/setting.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRestaurantFacade)
class RestaurantRepository implements IRestaurantFacade {
  final Dio _dio;
  RestaurantRepository(this._dio);

  @override
  Future<Either<RestaurantFailure, GetRestaurantListResponse>>
      getRestaurantList(GetRestaurantListRequest request) async {
    Response _response;

    try {
      _response = await _dio.get(Setting().getUrl + "app/v1/api/restaurant",
          queryParameters: request.toJson());

      final _result = GetRestaurantListResponse.fromJson(_response.data);
      print(_result.toJson());
      return right(_result);
    } on DioError catch (e) {
      return left(RestaurantFailure.badRequest(e.response.data.toString()));
    }
  }

  @override
  Future<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
      getCompleteRestaurantData({String restaurantId}) async {
    Response _response;

    try {
      _response = await _dio.get(
        Setting().getUrl +
            "app/v1/api/restaurant/$restaurantId?with=menuBooks,menus,categories",
      );

      final _result = GetAllRestaurantDataResponse.fromJson(_response.data);

      return right(_result);
    } on DioError catch (e) {
      print(e.toString());
      return left(RestaurantFailure.badRequest(e.response.data.toString()));
    }
  }
}
