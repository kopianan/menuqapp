import 'package:dartz/dartz.dart';
import 'package:feroza/domain/authentication/authentication_failure.dart';

abstract class IHomeFacade {
  Future<Either<AuthenticationFailure, List<dynamic>>> getAllMenuData(String latLang);
}
