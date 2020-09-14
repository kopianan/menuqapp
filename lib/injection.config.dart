// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/bloc/authentication_bloc.dart';
import 'infrastructure/authentication/authentication_repository.dart';
import 'infrastructure/core/dio_injectable_module.dart';
import 'application/home/bloc/home_bloc.dart';
import 'infrastructure/home/home_repository.dart';
import 'domain/authentication/i_authentication_facade.dart';
import 'domain/home/i_home_facade.dart';
import 'domain/menu/i_menu_facade.dart';
import 'domain/restaurant/i_restaurant_facade.dart';
import 'application/menu/menu_bloc.dart';
import 'infrastructure/menu/menu_repository.dart';
import 'application/restaurant/restaurant_bloc.dart';
import 'infrastructure/restaurant/restaurant_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final dioInjectableModule = _$DioInjectableModule();
  gh.lazySingleton<Dio>(() => dioInjectableModule.dio);
  gh.lazySingleton<IAuthenticationFacade>(
      () => AuthenticationRepository(get<Dio>()));
  gh.lazySingleton<IHomeFacade>(() => HomeRepository(get<Dio>()));
  gh.lazySingleton<IMenuFacade>(() => MenuRepository(get<Dio>()));
  gh.lazySingleton<IRestaurantFacade>(() => RestaurantRepository(get<Dio>()));
  gh.factory<MenuBloc>(() => MenuBloc(get<IMenuFacade>()));
  gh.factory<RestaurantBloc>(() => RestaurantBloc(get<IRestaurantFacade>()));
  gh.factory<AuthenticationBloc>(
      () => AuthenticationBloc(get<IAuthenticationFacade>()));
  gh.factory<HomeBloc>(() => HomeBloc(get<IHomeFacade>()));
  return get;
}

class _$DioInjectableModule extends DioInjectableModule {}
