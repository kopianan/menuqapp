import 'package:feroza/presentation/router/router_data.dart';
import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
        appBarTheme: AppBarTheme(color: primaryColor),
        primaryColorLight: primaryColor,
        accentColor: secondaryColor,
        buttonTheme: ButtonThemeData(
          height: 50,
          buttonColor: accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: GoogleFonts.firaSansTextTheme(
          TextTheme(
              button: TextStyle(fontSize: 20),
              
              headline3: TextStyle(
                  fontSize: 16, color: blackColor, fontWeight: FontWeight.bold),
              headline4: TextStyle(fontSize: 15, color: blackColor),
              headline5: TextStyle(fontSize: 14, color: blackColor)),
        ),
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
