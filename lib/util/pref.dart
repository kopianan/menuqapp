import 'dart:convert';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/domain/menu/menu_req_res.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:get_storage/get_storage.dart';

import 'constants.dart';

GetStorage get getStorageBox => GetStorage(dataStorage);

Future<void> saveHomeData(List<dynamic> listData) async {
  //list data is on dynamic / json

  try {
    //save restaurant
    await getStorageBox.write(
        restaurantKey, json.decode(listData[0].toString()));
    //save menu data
    await getStorageBox.write(menuKey, json.decode(listData[1].toString()));
    //save menu book data
    await getStorageBox.write(menuBookKey, json.decode(listData[2].toString()));
    return;
  } catch (e) {
    throw (e.toString());
  }
}

GetRestaurantListResponse loadRestaurantListData() {
  try {
    final _data =
        GetRestaurantListResponse.fromJson(getStorageBox.read(restaurantKey));
    return _data;
  } catch (e) {}
}

MenuResponse loadMenuListData() {
  try {
    final _data = MenuResponse.fromJson(getStorageBox.read(menuKey));
    return _data;
  } catch (e) {}
}

MenuBookResponse loadMenuBookListData() {
  try {
    final _data = MenuBookResponse.fromJson(getStorageBox.read(restaurantKey));
    return _data;
  } catch (e) {}
}
