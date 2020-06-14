import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:feroza/domain/scan/i_scan_facade.dart';
import 'package:feroza/domain/scan/menu.dart';
import 'package:feroza/domain/scan/scan_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'scan_event.dart';
part 'scan_state.dart';
part 'scan_bloc.freezed.dart';

@injectable
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  IScanFacade _iScanFacade;
  ScanBloc(this._iScanFacade);

  @override
  ScanState get initialState => ScanState.initial();

  @override
  Stream<ScanState> mapEventToState(
    ScanEvent event,
  ) async* {
    
    yield ScanState.loading();
    final result = await _iScanFacade.scanQrCode(code: event.codeQr);
    yield ScanState.successOrFailed(some(result));
  }
}
