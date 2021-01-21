import 'package:feroza/application/bloc/authentication_bloc.dart';
import 'package:feroza/application/core/controller/location_controller.dart';
import 'package:feroza/application/location/cubit/location_cubit.dart';
import 'package:feroza/presentation/main_home/main_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:imei_plugin/imei_plugin.dart';

import '../../injection.dart';

class SplashScreenPage extends StatefulWidget {
  static final String TAG = '/splash_screen';

  SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final authBloc = getIt<AuthenticationBloc>();
  final locationBloc = LocationCubit();
  final location = Get.put(LocationController()) ; 
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              authBloc..add(AuthenticationEvent.authenticate()),
        ),
        BlocProvider(
          create: (context) => locationBloc,
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthenticationBloc, AuthenticationState>(
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
                    (a) => a.fold(
                          (l) => print("Error"),
                          (r) {
                            locationBloc.getCurrentLocation();
                          },
                        )),
              );
            },
          ),
          BlocListener<LocationCubit, LocationState>(
            listener: (context, state) {
              state.map(
                initial: (e) => Fluttertoast.showToast(msg: "Initial"),
                onLoading: (e) => Fluttertoast.showToast(msg: "Loading..."),
                onError: (e) => Fluttertoast.showToast(msg: e.message),
                onSuccess: (e) {
                  Get.offNamed(MainHome.TAG);
                },
              );
            },
          )
        ],
        child: Scaffold(
            body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/images/loading.png',
                  fit: BoxFit.cover,
                )),
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
        )),
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
      context.read<AuthenticationBloc>()
        ..add(AuthenticationEvent.registerDevice(platformImei));
    } on PlatformException {
      platformImei = 'Failed to get platform version.';
    }
    if (!mounted) return;
  }
}
