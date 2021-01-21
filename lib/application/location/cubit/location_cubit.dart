import 'package:bloc/bloc.dart';
import 'package:feroza/application/core/controller/location_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationState.initial());

  void getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    emit(LocationState.onLoading());

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      emit(LocationState.onError('Location services are disabled.'));
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      emit(LocationState.onError(
          'Location permissions are permantly denied, we cannot request permissions.'));
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        emit(LocationState.onError(
            'Location permissions are denied (actual value: $permission).'));
      }
    }
    final _currLocation = await Geolocator.getCurrentPosition();
    //Save location to controller
    List<Placemark> placemarks = await placemarkFromCoordinates(
        _currLocation.latitude, _currLocation.longitude);
    print(placemarks[1].toJson());
    emit(LocationState.onSuccess(placemarks));
  }
}
