import 'package:feroza/application/bloc/authentication_bloc.dart';
import 'package:feroza/presentation/main_home/main_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:imei_plugin/imei_plugin.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../injection.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthenticationBloc>()..add(AuthenticationEvent.authenticate()),
      child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            authStatus: (e) {
              // print(e.isAuthenticate);
              // if (e.isAuthenticate)
              //   Get.offAll(MainHome());
              // else
              //   registerNewDevice(context);
              registerNewDevice(context);
            },
            registerDeviceOption: (value) => value.option.fold(
                () => () {},
                (a) => a.fold((l) => print("Error"), (r) {
                      Get.offAllNamed('/main_home');
                      // Get.to(MainHome());
                    })),
          );
        },
        builder: (context, state) {
          return Scaffold(
              body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                MdiIcons.foodForkDrink,
                size: 100,
              ),
              Center(child: CircularProgressIndicator())
            ],
          ));
        },
      ),
    );
  }

  Future<void> registerNewDevice(BuildContext context) async {
    String platformImei;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformImei =
          await ImeiPlugin.getImei(shouldShowRequestPermissionRationale: false);
      print(platformImei);
      context.bloc<AuthenticationBloc>()
        ..add(AuthenticationEvent.registerDevice(platformImei));
    } on PlatformException {
      platformImei = 'Failed to get platform version.';
    }
    if (!mounted) return;
  }
}
