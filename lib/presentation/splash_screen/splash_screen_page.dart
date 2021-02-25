import 'package:feroza/application/home/bloc/home_bloc.dart';
import 'package:feroza/presentation/main_home/main_home.dart';
import 'package:feroza/presentation/main_home/widgets/home_error_page.dart';
import 'package:feroza/util/pref.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../injection.dart';

class SplashScreenPage extends StatefulWidget {
  static final String TAG = '/splash_screen';

  SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    firebaseMessaging.getToken().then((value) => print(value));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
            create: (context) =>
                getIt<HomeBloc>()..add(HomeEvent.requestHomeData("2,3")),
            child:
                BlocConsumer<HomeBloc, HomeState>(listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                allHomeDataOption: (dataOption) {
                  dataOption.fold(
                      () => print("nothing"),
                      (a) => a.fold(
                            (l) => Fluttertoast.showToast(msg: "Error Data"),
                            (r) {
                              print(r);
                              //save data to storage.
                              saveHomeData(r).then(
                                (value) {
                                  Get.offNamed(MainHome.TAG);
                                },
                              ).catchError((onError) {
                                Fluttertoast.showToast(msg: onError.toString());
                              });
                            },
                          ));
                },
              );
            }, builder: (context, state) {
              return state.maybeMap(
                orElse: () => SplashScreenLoading(),
                isLoading: (loading) => SplashScreenLoading(),
                allHomeDataOption: (data) {
                  return data.dataOption.fold(
                      () => SplashScreenLoading(),
                      (a) => a.fold((l) => HomeErrorPage(),
                          (r) => SplashScreenLoading()));
                },
              );
            })));
  }
}

class SplashScreenLoading extends StatelessWidget {
  const SplashScreenLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
