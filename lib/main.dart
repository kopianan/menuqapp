import 'package:feroza/application/scan/provider/scan_provider.dart';
import 'package:feroza/injection.dart';
import 'package:feroza/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ScanProvider()),
  ], child: AppWidget()));
}
