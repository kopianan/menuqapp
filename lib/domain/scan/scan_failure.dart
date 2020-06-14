import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_failure.freezed.dart';

@freezed
abstract class ScanFailure with _$ScanFailure {
  const factory ScanFailure.serverError() = _ServerError;
  const factory ScanFailure.badRequest({String message}) = _BadRequest;
}
