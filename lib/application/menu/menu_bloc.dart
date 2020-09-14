import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:feroza/domain/menu/i_menu_facade.dart';
import 'package:feroza/domain/menu/menu_failure.dart';
import 'package:feroza/domain/menu/menu_req_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/menu/menu_data.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

@injectable
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  IMenuFacade _iMenuFacade;
  MenuBloc(this._iMenuFacade) : super(_Initial());

  @override
  Stream<MenuState> mapEventToState(
    MenuEvent event,
  ) async* {
    yield* event.map(
      getNearbyMenu: (value) async* {
        yield MenuState.nearbyMenuOption(isLoading: true, menuResponse: none());
        final _result = await _iMenuFacade.getNearbyMenuList(value.request);
        yield MenuState.nearbyMenuOption(
            isLoading: false, menuResponse: some(_result));
      },
      getRecommendedMenu: (value) async* {},
      getMenuBook: (_GetMenuBook value) async* {
        yield MenuState.getMenuBookByRestaurant(
            isLoading: true, menuBookResponse: none());
        final _result =
            await _iMenuFacade.getRestaurantMenuBook(value.menuBookRequest);
        yield MenuState.getMenuBookByRestaurant(
            isLoading: false, menuBookResponse: some(_result));
      },
      getSingleMenu: (_GetSingleMenu value) async* {
        yield MenuState.singleMenuWithRestaurantData(
            isLoading: true, singleMenuOption: none());
        print("Single Menu");
        final _result =
            await _iMenuFacade.getSingleMenuWithRestaurant(value.menuId);
        print(_result.toString());
        yield MenuState.singleMenuWithRestaurantData(
            isLoading: false, singleMenuOption: some(_result));
      },
      getAllMenu: (_GetAllMenu value) async* {
        //mau ngapain ?

        yield MenuState.getAllMenuOption(
            isLoading: true, allMenuOption: none());
        final _result =
            await _iMenuFacade.getAllMenuByLocation(value.paginate, value.page);
        yield MenuState.getAllMenuOption(
            isLoading: false, allMenuOption: some(_result));
      },
    );
  }
}
