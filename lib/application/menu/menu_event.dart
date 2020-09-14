part of 'menu_bloc.dart';

@freezed
abstract class MenuEvent with _$MenuEvent {
  const factory MenuEvent.getNearbyMenu(MenuRequestByNearby request) =
      _GetNearbyMenu;
  const factory MenuEvent.getRecommendedMenu(MenuRequestByNearby request) =
      _GetRecommendedMenu;
  const factory MenuEvent.getMenuBook(MenuBookRequest menuBookRequest) =
      _GetMenuBook;
  const factory MenuEvent.getSingleMenu(String menuId) = _GetSingleMenu;
  const factory MenuEvent.getAllMenu(String paginate, String page) =
      _GetAllMenu;
}
