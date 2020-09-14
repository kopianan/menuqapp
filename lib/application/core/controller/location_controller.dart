// import 'package:geolocator/geolocator.dart';
import 'package:get/state_manager.dart';

class LocationController extends GetxController {
  // Position _position = Position();
  String _latlang;
  void setCurrentPosition(String latlang) {
    this._latlang = latlang;
    update();
  }

  String get getCurrentPosition => this._latlang;
}
