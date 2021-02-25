import 'package:feroza/presentation/router/router_data.dart';
import 'package:feroza/presentation/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppWidget extends StatefulWidget {
  static final String TAG = '/app_widget';

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();

    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return onError();
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            initialRoute: '/splash_screen',
            // home: MainHome(),
            debugShowCheckedModeBanner: false,
            title: 'Menuq',
            getPages: getAllPages,
            defaultTransition: Transition.downToUp,
            theme: theme(),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return onLoading();
      },
    );
  }
}

MaterialApp onLoading() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Text("Loading"),
      ),
    ),
  );
}

MaterialApp onError() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Text("Error"),
      ),
    ),
  );
}
