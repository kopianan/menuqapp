part of 'restaurant_bloc.dart';

@freezed
abstract class RestaurantEvent implements _$RestaurantEvent {
  const factory RestaurantEvent.getRestaurantList(
      {@required GetRestaurantListRequest request}) = _GetRestaurantList;
  const factory RestaurantEvent.getNearbyRestaurantList(
      {@required GetRestaurantListRequest request}) = _GetNearbyRestaurantList;
  const factory RestaurantEvent.getCompleteRestaurantData(
      {@required String restaurantId}) = _GetCompleteRestaurantData;
}
