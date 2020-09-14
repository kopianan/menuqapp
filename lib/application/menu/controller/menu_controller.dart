import 'package:feroza/domain/menu/menu_req_res.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  MenuResponse _menuData;
  MenuBookResponse _menuBookResponse;

  setMenuData(MenuResponse data) {
    this._menuData = data;
    update();
  }

  setMenuBook(MenuBookResponse data) {
    this._menuBookResponse = data;
    update();
  }

  MenuResponse get getMenuData => this._menuData;
  MenuBookResponse get getMenuBook => this._menuBookResponse;
}
