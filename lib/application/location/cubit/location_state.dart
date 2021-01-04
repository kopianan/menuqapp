part of 'location_cubit.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.onLoading() = _OnLoading;
  const factory LocationState.onError(String message) = _OnError;
  const factory LocationState.onSuccess(List<Placemark> position) = _OnSuccess;
}
