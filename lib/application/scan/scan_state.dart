part of 'scan_bloc.dart';

@freezed
abstract class ScanState with _$ScanState {
  factory ScanState.initial() = _Initial;
  factory ScanState.loading() = _Loading;
  factory ScanState.successOrFailed(
          Option<Either<ScanFailure, MenuData>> successOrFailOptoin) =
      _SuccessOrFailed;
}
