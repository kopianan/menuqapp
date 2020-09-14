part of 'restaurant_bloc.dart';

@freezed
abstract class RestaurantState implements _$RestaurantState {
  const factory RestaurantState.initial() = _Initial;
  const factory RestaurantState.getRestarurantListOption(
      {@required
          bool isLoading,
      @required
          Option<Either<RestaurantFailure, GetRestaurantListResponse>>
              restaurantList}) = _GetRestaurantListOption;
  const factory RestaurantState.completeRestaurantDataOption(
      {@required
          bool isLoading,
      @required
          Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
              restaurantList}) = _CompleteRestaurantDataOption;
}
