import 'package:dartz/dartz.dart';
import 'package:feroza/domain/scan/menu.dart';
import 'package:feroza/domain/scan/scan_failure.dart';
import 'package:flutter/foundation.dart';

abstract class IScanFacade {
  Future<Either<ScanFailure, MenuData>> scanQrCode({@required String code});
}
