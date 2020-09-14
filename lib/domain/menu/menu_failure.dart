import 'package:freezed_annotation/freezed_annotation.dart';
part 'menu_failure.freezed.dart';

@freezed
abstract class MenuFailure implements _$MenuFailure {
  const factory MenuFailure.badRequest(String message) = _BadRequest;
  const factory MenuFailure.notFound() = _NotFound;
  const factory MenuFailure.serverError(String message) = _ServerError;
}
