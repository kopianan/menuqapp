import 'package:feroza/presentation/app_widget.dart';
import 'package:feroza/presentation/menu_book/menu_book_page.dart';
import 'package:feroza/presentation/place_profile/restaurant_profile_page.dart';
import 'package:feroza/presentation/see_all/see_all_food_page.dart';
import 'package:feroza/presentation/see_all/see_all_menu_book_page.dart';
import 'package:feroza/presentation/see_all/see_all_page.dart';
import 'package:feroza/presentation/splash_screen/splash_screen_page.dart';
import 'package:get/route_manager.dart';

import 'package:feroza/presentation/main_home/main_home.dart';
import 'package:feroza/presentation/photo_view/photo_view_page.dart';

class RouterData {
  List<GetPage> get getAllPages {
    return [
      GetPage(name: '/photo_view', page: () => PhotoViewPage()),
      GetPage(name: '/main_home', page: () => MainHome()),
      GetPage(name: '/restaurant_profile', page: () => RestaurantProfilePage()),
      GetPage(name: '/splash_screen', page: () => SplashScreenPage()),
      GetPage(name: '/menu_book', page: () => MenuBookPage()),
      GetPage(name: '/photo_view', page: () => PhotoViewPage()),
      GetPage(name: '/see_all', page: () => SeeAllPage()),
      GetPage(name: '/app_widget', page: () => AppWidget()),
      GetPage(name: '/see_all_food', page: () => SeeAllFoodPage()),
      GetPage(name: '/see_all_menu_book', page: () => SeeAllMenuBookPage()),
    ];
  }
}
