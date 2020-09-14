import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:feroza/domain/restaurant/i_restaurant_facade.dart';
import 'package:feroza/domain/restaurant/restaurant_failure.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';
part 'restaurant_bloc.freezed.dart';

@injectable
class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  IRestaurantFacade _iRestaurantFacade;
  RestaurantBloc(this._iRestaurantFacade) : super(RestaurantState.initial());

  @override
  Stream<RestaurantState> mapEventToState(
    RestaurantEvent event,
  ) async* {
    yield* event.map(
      getRestaurantList: (e) async* {
        yield RestaurantState.getRestarurantListOption(
            isLoading: true, restaurantList: none());
        
        final _result = await _iRestaurantFacade.getRestaurantList(e.request);
        yield RestaurantState.getRestarurantListOption(
            isLoading: false, restaurantList: some(_result));
      },
      getNearbyRestaurantList: (e) async* {},
      getCompleteRestaurantData: (_GetCompleteRestaurantData value) async* {
        print("Cek"); 
        yield RestaurantState.completeRestaurantDataOption(
            isLoading: false, restaurantList: none());
        final _result = await _iRestaurantFacade.getCompleteRestaurantData(
            restaurantId: value.restaurantId);
        yield RestaurantState.completeRestaurantDataOption(
            isLoading: false, restaurantList: some(_result));
      },
    );
  }
}
