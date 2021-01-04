import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

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
    List<Placemark> placemarks = await placemarkFromCoordinates(
        _currLocation.latitude, _currLocation.longitude);

    emit(LocationState.onSuccess(placemarks));
  }
}
