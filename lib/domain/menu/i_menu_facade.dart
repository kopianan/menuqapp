import 'package:dartz/dartz.dart';
import 'package:feroza/domain/menu/menu_failure.dart';

import 'menu_data.dart';
import 'menu_req_res.dart';

abstract class IMenuFacade {
  Future<Either<MenuFailure, MenuResponse>> getNearbyMenuList(
      MenuRequestByNearby request);
  Future<Either<MenuFailure, MenuBookResponse>> getRestaurantMenuBook(
      MenuBookRequest request);
  Future<Either<MenuFailure, MenuBookResponseWithRestaurant>>
      getSingleMenuWithRestaurant(String menuId);
  Future<Either<MenuFailure, List<MenuClassDataWithRestaurant>>>
      getAllMenuByLocation(String paginate, String page);
}
