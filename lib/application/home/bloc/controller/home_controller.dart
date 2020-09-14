import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  var _responseHome = List<dynamic>();
  setResponseHomeData(List<dynamic> data) {
    this._responseHome = data;
    update();
  }

  getResponseHomeData() => this._responseHome;
}
