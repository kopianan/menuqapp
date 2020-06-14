import 'package:auto_route/auto_route.dart';
import 'package:feroza/application/scan/scan_bloc.dart';
import 'package:feroza/injection.dart';
import 'package:feroza/presentation/home_screen/home_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'router/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ScanBloc>(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Menuq',
          theme: ThemeData(
            accentColor: Color(0xffF8DE44),
            buttonTheme: ButtonThemeData(
              height: 50,
              buttonColor: Color(0xff28334A),
              textTheme: ButtonTextTheme.primary,
            ),
            textTheme: TextTheme(button: TextStyle(fontSize: 20)),
            // primaryColor: Color(0xffF8DE44),
            // primaryColor: Color(0xfff65058),
            primaryColor: Color(0xff28334A),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          builder: ExtendedNavigator<Router>(router: Router()),
          home: HomeScreenPage()),
    );
  }
}
