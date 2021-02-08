import 'package:feroza/presentation/authentication/sign_in/sign_in_page.dart';
import 'package:feroza/presentation/authentication/sign_up/sign_up_page.dart';
import 'package:feroza/presentation/router/router_data.dart';
import 'package:feroza/presentation/theme.dart';
import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  static final String TAG = '/app_widget';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: '/splash_screen',
      home: SignUpPage(),
      debugShowCheckedModeBanner: false,
      title: 'Menuq',
      getPages: getAllPages,
      defaultTransition: Transition.downToUp,
      theme: theme(),
    );
  }
}
