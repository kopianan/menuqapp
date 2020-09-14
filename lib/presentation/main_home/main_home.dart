import 'dart:io';

import 'package:feroza/application/core/controller/location_controller.dart';
import 'package:feroza/application/core/cubit/location_cubit.dart';
import 'package:feroza/infrastructure/location/location_service.dart';
import 'package:feroza/presentation/main_home/widgets/home_error_page.dart';
import 'package:feroza/presentation/main_home/widgets/home_loading_page.dart';
import 'package:feroza/presentation/splash_screen/splash_screen_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import 'home_feed_content_page.dart';

class MainHome extends StatefulWidget {
  MainHome({Key key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final LocationController locationController = Get.put(LocationController());

  @override
  void initState() {
    locationController.setCurrentPosition("9,9");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomeFeedContent();
  }
}

void openDialogLocation(BuildContext context) {
  String iosSetting =
      "Settings > Privacy > Location Services > Menuq > Choose 'Always' and back to application";
  String androidSetting =
      "Open Setting > Permission > Location, Allow the location permission";
  Get.dialog(AlertDialog(
    title: Text("Location Permission"),
    content: Container(
      margin: EdgeInsets.all(10),
      child: Text((Platform.isIOS) ? iosSetting : androidSetting),
    ),
    actions: [
      FlatButton(
          onPressed: () {
            Navigator.pop(context);
            Get.offAll(SplashScreenPage());
          },
          child: Text(
            "Refresh This Page",
            style: TextStyle(color: Colors.grey),
          )),
      FlatButton(
          onPressed: () {
            openAppSettings();
          },
          child: Text("Open Setting"))
    ],
  ));
}
