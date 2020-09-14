import 'package:feroza/application/menu/controller/menu_controller.dart';
import 'package:feroza/application/restaurant/restaurant_bloc.dart';
import 'package:feroza/domain/menu/menu_req_res.dart';
import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:feroza/presentation/place_profile/widgets/restaurant_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../injection.dart';
import 'widgets/restaurant_profile_loading_widget.dart';

class RestaurantProfilePage extends StatefulWidget {
  RestaurantProfilePage({Key key}) : super(key: key);

  @override
  _RestaurantProfilePageState createState() => _RestaurantProfilePageState();
}

class _RestaurantProfilePageState extends State<RestaurantProfilePage> {
  String restaurantId;
  MenuBookRequest _menuBookRequest;

  final MenuController menuController = Get.put(MenuController());

  @override
  void initState() {
    _menuBookRequest = MenuBookRequest(page: 1, paginate: 10);
    restaurantId = Get.arguments as String;
    super.initState();
  }

  menuBlocListener(BuildContext context, RestaurantState state) {
    state.maybeMap(
      orElse: () {},
      completeRestaurantDataOption: (value) => {
        value.restaurantList.fold(
            () => print("None"),
            (a) => a.fold(
                  (l) => print("Error"),
                  (r) => print(r.data.toString()),
                ))
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RestaurantBloc>()
        ..add(RestaurantEvent.getCompleteRestaurantData(
            restaurantId: restaurantId)),
      child: BlocConsumer<RestaurantBloc, RestaurantState>(
        listener: menuBlocListener,
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => RestaurantProfileLoadingWidget(),
            completeRestaurantDataOption: (value) {
              if (value.isLoading) {
                return RestaurantProfileLoadingWidget();
              } else {
                return value.restaurantList.fold(
                    () => RestaurantProfileLoadingWidget(),
                    (a) => a.fold(
                        (l) => RestaurantProfileLoadingWidget(),
                        (r) => RestaurantProfileWidget(
                              getAllRestaurantDataResponse: r,
                            )));
              }
            },
          );
        },
      ),
    );
  }
}
