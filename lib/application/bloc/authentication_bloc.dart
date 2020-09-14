import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:feroza/domain/authentication/authentication_failure.dart';
import 'package:feroza/domain/authentication/i_authentication_facade.dart';
import 'package:feroza/infrastructure/core/pref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this._iAuthenticationFacade) : super(_Initial());
  final IAuthenticationFacade _iAuthenticationFacade;

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    final pref = Pref();
    yield* event.map(
      registerDevice: (e) async* {
        yield AuthenticationState.registerDeviceOption(
            isLoading: true, option: none());
        final _result = await _iAuthenticationFacade.registerDevice(e.imei);

        yield AuthenticationState.registerDeviceOption(
            isLoading: false, option: some(_result));
      },
      authenticate: (e) async* {
        final _result = await pref.loadDeviceToken();
        yield _result.fold(
          (l) => AuthenticationState.authStatus(false),
          (r) => AuthenticationState.authStatus(true),
        );

      },
    );
  }
}
