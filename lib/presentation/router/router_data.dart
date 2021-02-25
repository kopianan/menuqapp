import 'package:feroza/presentation/app_widget.dart';
import 'package:feroza/presentation/cart/cart_page.dart';
import 'package:feroza/presentation/chart/chart_page.dart';
import 'package:feroza/presentation/menu_book/menu_book_page.dart';
import 'package:feroza/presentation/place_profile/restaurant_profile_page.dart';
import 'package:feroza/presentation/see_all/see_all_food_page.dart';
import 'package:feroza/presentation/see_all/see_all_menu_book_page.dart';
import 'package:feroza/presentation/see_all/see_all_page.dart';
import 'package:feroza/presentation/splash_screen/splash_screen_page.dart';
import 'package:get/route_manager.dart';

import 'package:feroza/presentation/main_home/main_home.dart';
import 'package:feroza/presentation/photo_view/photo_view_page.dart';

List<GetPage> get getAllPages {
  return [
    GetPage(name: PhotoViewPage.TAG, page: () => PhotoViewPage()),
    GetPage(name: MainHome.TAG, page: () => MainHome()),
    GetPage(
        name: RestaurantProfilePage.TAG, page: () => RestaurantProfilePage()),
    GetPage(name: SplashScreenPage.TAG, page: () => SplashScreenPage()),
    GetPage(name: MenuBookPage.TAG, page: () => MenuBookPage()),
    GetPage(name: PhotoViewPage.TAG, page: () => PhotoViewPage()),
    GetPage(name: SeeAllPage.TAG, page: () => SeeAllPage()),
    GetPage(name: AppWidget.TAG, page: () => AppWidget()),
    GetPage(name: SeeAllFoodPage.TAG, page: () => SeeAllFoodPage()),
    GetPage(name: SeeAllMenuBookPage.TAG, page: () => SeeAllMenuBookPage()),
    GetPage(name: ChartPage.TAG, page: () => ChartPage()),
    GetPage(name: CartPage.TAG, page: () => CartPage()),
  ];
}
