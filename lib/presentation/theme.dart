import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      textTheme:
          TextTheme(headline6: TextStyle(color: kBlackColor, fontSize: 18)));
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder enabledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Colors.grey, width: 1));
  OutlineInputBorder defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Colors.grey, width: 1));

  OutlineInputBorder focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: kAccentColor,
        width: 1,
      ));
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: enabledBorder,
    focusedBorder: focusedBorder,
    border: defaultBorder,
  );
}
