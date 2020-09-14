import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:get/state_manager.dart';

class RestaurantController extends GetxController {
  GetRestaurantListResponse _restaurantData;
  GetAllRestaurantDataResponse _allRestaurantDataResponse;
  setRestaurantData(GetRestaurantListResponse data) {
    this._restaurantData = data;
    update();
  }

  setAllRestaurantData(GetAllRestaurantDataResponse data) {
    this._allRestaurantDataResponse = data;
    update();
  }

  GetRestaurantListResponse get getRestaurantData => this._restaurantData;
  GetAllRestaurantDataResponse get getAllRestaurantData =>
      this._allRestaurantDataResponse;
}
