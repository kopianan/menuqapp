import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:feroza/domain/menu/i_menu_facade.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/domain/menu/menu_req_res.dart';
import 'package:feroza/domain/menu/menu_failure.dart';
import 'package:feroza/util/setting.dart';
import 'package:injectable/injectable.dart';

import '../../domain/menu/menu_data.dart';

@LazySingleton(as: IMenuFacade)
class MenuRepository implements IMenuFacade {
  final Dio _dio;
  MenuRepository(this._dio);

  @override
  Future<Either<MenuFailure, MenuResponse>> getNearbyMenuList(
      MenuRequestByNearby request) async {
    Response _response;

    try {
      _response = await _dio.get(Setting().getUrl + "app/v1/api/menu",
          queryParameters: request.toJson());

      final _result = MenuResponse.fromJson(_response.data);
      print(_result.toJson());
      return right(_result);
    } on DioError catch (e) {
      return left(MenuFailure.badRequest(e.response.data.toString()));
    }
  }

  @override
  Future<Either<MenuFailure, MenuBookResponse>> getRestaurantMenuBook(
      MenuBookRequest request) async {
    Response _response;

    try {
      _response = await _dio.get(Setting().getUrl + "app/v1/api/menu-book",
          queryParameters: request.toJson());

      final _result = MenuBookResponse.fromJson(_response.data);
      return right(_result);
    } on DioError catch (e) {
      return left(MenuFailure.badRequest(e.response.data.toString()));
    }
  }

  @override
  Future<Either<MenuFailure, MenuBookResponseWithRestaurant>>
      getSingleMenuWithRestaurant(String menuId) async {
    Response _response;
    print("single menu repository");
    try {
      _response = await _dio.get(
        Setting().getUrl + "app/v1/api/menu/$menuId?with=restaurant",
      );
      print(_response.data.toString());
      final _result = MenuBookResponseWithRestaurant.fromJson(_response.data);
      print(_result.data.name);
      return right(_result);
    } on DioError catch (e) {
      print(e.toString());
      return left(MenuFailure.badRequest(e.response.data.toString()));
    }
  }

  @override
  Future<Either<MenuFailure, List<MenuClassData>>> getAllMenuByLocation(
      String paginate, String page) async {
    Response _response;

    try {
      _response = await _dio.get(
        Setting().getUrl + "app/v1/api/menu?paginate=$paginate&page=$page",
      );
      print(_response.data.toString());
      List _data = _response.data['data'];
      List<MenuClassData> _result =
          _data.map((e) => MenuClassData.fromJson(e)).toList();

      return right(_result);
    } on DioError catch (e) {
      print(e.toString());
      return left(MenuFailure.badRequest(e.response.data.toString()));
    }
  }

  @override
  Future<Either<MenuFailure, List<MenuBookData>>> getAllBookMenu(
      String paginate, String page) async {
    Response _response;

    try {
      _response = await _dio.get(
        Setting().getUrl + "app/v1/api/menu-book?paginate=$paginate&page=$page",
      );
      List _data = _response.data['data'];
      List<MenuBookData> _result =
          _data.map((e) => MenuBookData.fromJson(e)).toList();

      return right(_result);
    } on DioError catch (e) {
      print(e.toString());
      return left(MenuFailure.badRequest(e.response.data.toString()));
    }
  }
}
