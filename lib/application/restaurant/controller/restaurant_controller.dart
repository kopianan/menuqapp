import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/domain/restaurant/single_restaurant_data.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class RestaurantController extends GetxController {
  final restaurantData = SingleRestaurantCompleteData().obs;
  final cartData = List<CartData>().obs;

  SingleRestaurantCompleteData get getDataCurrentRestaurant =>
      this.restaurantData.value;

  setDataCurrentRestaurant(SingleRestaurantCompleteData data) {
    this.restaurantData.value = data;
  }

  //CART
  List<CartData> get getCartList => this.cartData;

  addNewDataToChart(CartData newData) {
    try {
      var _currMenuData = getCartList
          .firstWhere((element) => element.menuList.id == newData.menuList.id);

      cartData
          .removeWhere((element) => element.menuList.id == newData.menuList.id);
      cartData.add(_currMenuData);
    } catch (e) {
      cartData.add(newData);
    }
  }

  decreaseDataFromCart(CartData removed) {
    try {
      var _currMenuData = getCartList
          .firstWhere((element) => element.menuList.id == removed.menuList.id);

      if (_currMenuData.qty > 1) {
        final index = getCartList.indexWhere(
            (element) => element.menuList.id == removed.menuList.id);
        _currMenuData..qty -= 1;
        cartData.removeAt(index);
        cartData.insert(index, _currMenuData);
      } else {
        cartData.removeWhere(
            (element) => element.menuList.id == removed.menuList.id);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

//checking

  CartData checkIfDataExist(MenuClassData classData) {
    try {
      final _currMenuData = getCartList
          .firstWhere((element) => element.menuList.id == classData.id);
      return _currMenuData;
    } catch (e) {
      return CartData(menuList: classData, qty: 1);
    }
  }
}

class CartData {
  final MenuClassData menuList;
  int qty;

  CartData({this.menuList, this.qty});
}
