part of 'menu_bloc.dart';

@freezed
abstract class MenuState with _$MenuState {
  const factory MenuState.initial() = _Initial;
  const factory MenuState.nearbyMenuOption(
          {@required bool isLoading,
          @required Option<Either<MenuFailure, MenuResponse>> menuResponse}) =
      _NearbyMenuOption;

  const factory MenuState.getMenuBookByRestaurant(
          {@required
              bool isLoading,
          @required
              Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse}) =
      _GetMenuBookByRestaurant;
  const factory MenuState.singleMenuWithRestaurantData(
      {@required
          bool isLoading,
      @required
          Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
              singleMenuOption}) = _SingleMenuWithRestaurantData;

  const factory MenuState.getAllMenuOption(
      {@required
          bool isLoading,
      @required
          Option<Either<MenuFailure, List<MenuClassDataWithRestaurant>>>
              allMenuOption}) = _GetAllMenuOption;
}
