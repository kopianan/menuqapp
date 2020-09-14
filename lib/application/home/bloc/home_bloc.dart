import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:feroza/domain/authentication/authentication_failure.dart';
import 'package:feroza/domain/home/i_home_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  IHomeFacade _iHomeFacade;
  HomeBloc(this._iHomeFacade) : super(_Initial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      started: (value) async* {},
      requestHomeData: (value) async* {
        yield HomeState.isLoading();
        final _result = await _iHomeFacade.getAllMenuData(value.lantLong);
        yield HomeState.allHomeDataOption(some(_result));
      },
    );
  }
}
