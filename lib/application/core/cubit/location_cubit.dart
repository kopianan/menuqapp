// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:geolocator/geolocator.dart';

// part 'location_state.dart';
// part 'location_cubit.freezed.dart';

// class LocationCubit extends Cubit<LocationState> {
//   LocationCubit() : super(_Initial());

//   // void getLatLongCurrentPosition() async {
//   //   try {
//   //     GeolocationStatus geolocationStatus =
//   //         await Geolocator().checkGeolocationPermissionStatus();
//   //     print("LOCATION STATUS" + geolocationStatus.toString());
//   //     emit(LocationState.isLoading());
//   //     Position position = await Geolocator()
//   //         .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//   //     emit(LocationState.currentLatLang(position: position));
//   //   } catch (e) {
//   //     emit(LocationState.error(e.toString()));
//   //   }
//   // }

//   // void getCurrentLocatoinPlaceMark(double lat, double long) async {
//   //   try {
//   //     emit(LocationState.isLoading());
//   //     List<Placemark> position =
//   //         await Geolocator().placemarkFromCoordinates(lat, long);
//   //     emit(LocationState.currentPlaceMark(placemark: (position)));
//   //   } catch (e) {
//   //     throw Exception(e.toString());
//   //   }
//   // }
// }
