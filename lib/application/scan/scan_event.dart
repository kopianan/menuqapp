part of 'scan_bloc.dart';

@freezed
abstract class ScanEvent with _$ScanEvent {
  factory ScanEvent({@required String codeQr}) = _ScanEvent;
  // factory ScanEvent.scanQrPressed(String codeQr) = _ScanQrPressed;
  // factory ScanEvent.signOutPressed() = _SignOutPressed;
}
