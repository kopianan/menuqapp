import 'package:feroza/presentation/router/router_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  static final String TAG = '/app_widget';
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/splash_screen',
      debugShowCheckedModeBanner: false,
      title: 'Menuq',
      getPages: getAllPages,
      defaultTransition: Transition.downToUp,
      theme: ThemeData(
        accentColor: Color(0xffF8DE44),
        buttonTheme: ButtonThemeData(
          height: 50,
          buttonColor: Color(0xff28334A),
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: TextTheme(
            button: TextStyle(fontSize: 20),
            headline3: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            headline4: TextStyle(fontSize: 15, color: Colors.black),
            headline5: TextStyle(fontSize: 14, color: Colors.grey)),
        primaryColor: Color(0xff28334A),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
