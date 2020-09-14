import 'package:feroza/injection.dart';
import 'package:feroza/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);

  await Permission.location.request();
  runApp(
    AppWidget());
}
