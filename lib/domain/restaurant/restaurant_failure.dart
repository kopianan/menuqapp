import 'package:freezed_annotation/freezed_annotation.dart';
part 'restaurant_failure.freezed.dart';

@freezed
abstract class RestaurantFailure implements _$RestaurantFailure {
  const factory RestaurantFailure.badRequest(String message) = _BadRequest;
  const factory RestaurantFailure.notFound() = _NotFound;
  const factory RestaurantFailure.serverError(String message) = _ServerError;
}
