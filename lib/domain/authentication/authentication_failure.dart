import 'package:freezed_annotation/freezed_annotation.dart';
part 'authentication_failure.freezed.dart';

@freezed
abstract class AuthenticationFailure implements _$AuthenticationFailure {
  const factory AuthenticationFailure.badRequest(String message) = _BadRequest;
  const factory AuthenticationFailure.serverError() = _ServerError;
}
