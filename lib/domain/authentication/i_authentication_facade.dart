import 'package:dartz/dartz.dart';
import 'package:feroza/domain/authentication/authentication_failure.dart';

abstract class IAuthenticationFacade {
  Future<Either<AuthenticationFailure, String>> registerDevice(String imei);
}
