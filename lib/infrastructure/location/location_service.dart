// import 'dart:async';

// import 'package:feroza/application/core/controller/location_controller.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:get/get.dart';

// class LocationService {
//   Geolocator geolocator = Geolocator();
//   LocationController locationController = Get.put(LocationController());

//   var locationOptions =
//       LocationOptions(accuracy: LocationAccuracy.high, distanceFilter: 10);

//   StreamController<Position> _locationStreamController =
//       StreamController<Position>.broadcast();

//   LocationService() {
//     print("TEST");
//     geolocator.getPositionStream(locationOptions).listen((event) {
//       locationController.setCurrentPosition(event);
//       _locationStreamController.add(event);
//     });
//   }
//   Stream<Position> get getLocationStream => _locationStreamController.stream;
// }
