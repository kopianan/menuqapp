// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:feroza/presentation/home_screen/home_screen_page.dart';
import 'package:feroza/presentation/photo_view/photo_view_page.dart';
import 'package:feroza/domain/scan/menu.dart';
import 'package:feroza/presentation/dashboard/dashboard_page.dart';

abstract class Routes {
  static const homeScreenPage = '/';
  static const photoViewPage = '/photo-view-page';
  static const dashboardPaged = '/dashboard-paged';
  static const all = {
    homeScreenPage,
    photoViewPage,
    dashboardPaged,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreenPage:
        if (hasInvalidArgs<HomeScreenPageArguments>(args)) {
          return misTypedArgsRoute<HomeScreenPageArguments>(args);
        }
        final typedArgs =
            args as HomeScreenPageArguments ?? HomeScreenPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeScreenPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.photoViewPage:
        if (hasInvalidArgs<PhotoViewPageArguments>(args)) {
          return misTypedArgsRoute<PhotoViewPageArguments>(args);
        }
        final typedArgs =
            args as PhotoViewPageArguments ?? PhotoViewPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => PhotoViewPage(menuPhotos: typedArgs.menuPhotos),
          settings: settings,
        );
      case Routes.dashboardPaged:
        if (hasInvalidArgs<DashboardPagedArguments>(args)) {
          return misTypedArgsRoute<DashboardPagedArguments>(args);
        }
        final typedArgs =
            args as DashboardPagedArguments ?? DashboardPagedArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => DashboardPaged(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//HomeScreenPage arguments holder class
class HomeScreenPageArguments {
  final Key key;
  HomeScreenPageArguments({this.key});
}

//PhotoViewPage arguments holder class
class PhotoViewPageArguments {
  final MenuPhotos menuPhotos;
  PhotoViewPageArguments({this.menuPhotos});
}

//DashboardPaged arguments holder class
class DashboardPagedArguments {
  final Key key;
  DashboardPagedArguments({this.key});
}
