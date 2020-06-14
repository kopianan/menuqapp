import 'package:auto_route/auto_route_annotations.dart';
import 'package:feroza/presentation/dashboard/dashboard_page.dart';
import 'package:feroza/presentation/home_screen/home_screen_page.dart';
import 'package:feroza/presentation/photo_view/photo_view_page.dart';

//flutter pub run build_runner watch --delete-conflicting-outputs
@MaterialAutoRouter()
class $Router {
  @initial
  HomeScreenPage homeScreenPage;

  PhotoViewPage photoViewPage;
  
  DashboardPaged dashboardPaged;
}
