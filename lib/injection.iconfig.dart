// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:feroza/infrastructure/core/dio_injectable_module.dart';
import 'package:dio/dio.dart';
import 'package:feroza/infrastructure/scan/scan_repository.dart';
import 'package:feroza/domain/scan/i_scan_facade.dart';
import 'package:feroza/application/scan/scan_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final dioInjectableModule = _$DioInjectableModule();
  g.registerLazySingleton<Dio>(() => dioInjectableModule.dio);
  g.registerLazySingleton<IScanFacade>(() => ScanRepository(g<Dio>()));
  g.registerFactory<ScanBloc>(() => ScanBloc(g<IScanFacade>()));
}

class _$DioInjectableModule extends DioInjectableModule {}
