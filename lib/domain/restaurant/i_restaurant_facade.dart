import 'package:dartz/dartz.dart';
import 'package:feroza/domain/restaurant/restaurant_failure.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:flutter/foundation.dart';

abstract class IRestaurantFacade {
  Future<Either<RestaurantFailure, GetRestaurantListResponse>>
      getRestaurantList(GetRestaurantListRequest request);
  Future<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
      getCompleteRestaurantData({@required String restaurantId});
}
