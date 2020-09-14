part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.registerDeviceOption(
          {bool isLoading,
          Option<Either<AuthenticationFailure, String>> option}) =
      _RegisterDeviceOption;

  const factory AuthenticationState.authStatus(bool isAuthenticate) =
      _AuthStatus;
}
