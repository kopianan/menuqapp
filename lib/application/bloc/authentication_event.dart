part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.registerDevice(String imei) = _RegisterDevice;
  const factory AuthenticationEvent.authenticate() = _Authenticate;
}