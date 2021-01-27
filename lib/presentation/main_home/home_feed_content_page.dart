import 'dart:convert';
import 'package:feroza/application/chart/chart_controller.dart';
import 'package:feroza/application/core/controller/location_controller.dart';
import 'package:feroza/application/home/bloc/home_bloc.dart';
import 'package:feroza/application/menu/controller/menu_controller.dart';
import 'package:feroza/application/restaurant/controller/restuarant_controller.dart';
import 'package:feroza/domain/menu/menu_req_res.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../injection.dart';
import 'container/home_feed_container.dart';
import 'widgets/home_error_page.dart';
import 'widgets/home_loading_page.dart';

class HomeFeedContent extends StatefulWidget {
  const HomeFeedContent({
    Key key,
  }) : super(key: key);

  @override
  _HomeFeedContentState createState() => _HomeFeedContentState();
}

class _HomeFeedContentState extends State<HomeFeedContent> {
  final RestaurantController restaurantController =
      Get.put(RestaurantController());
  final MenuController menuController = Get.put(MenuController());
  LocationController locationController = Get.put(LocationController());
  
  final ChartController chartController = Get.put(ChartController());
  @override
  void initState() {
    super.initState();
  }

  void _onPanDown(DragDownDetails dragfDownDetails) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void _onTapRemoveAllFocus() {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onPanDown: _onPanDown,
        onTap: _onTapRemoveAllFocus,
        child: BlocProvider(
          create: (context) => getIt<HomeBloc>()
            ..add(HomeEvent.requestHomeData(
                "${locationController.getCurrentPosition}")),
          child: BlocConsumer<HomeBloc, HomeState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                allHomeDataOption: (dataOption) {
                  dataOption.fold(
                      () => print("nothing"),
                      (a) => a.fold(
                            (l) => print("error"),
                            (r) {
                              print("Triggered HomeDataOption");
                              //Getting all Home Menu (Multiple API REQUEST)
                              final _firstData =
                                  GetRestaurantListResponse.fromJson(
                                      json.decode(r.first.toString()));

                              final _secondData = MenuResponse.fromJson(
                                  json.decode(r[1].toString()));
                              final _thirdData = MenuBookResponse.fromJson(
                                  json.decode(r[2].toString()));

                              //Save All Data To Menu And Restaurant Controller
                              menuController.setMenuData(_secondData);
                              restaurantController
                                  .setRestaurantData(_firstData);
                              menuController.setMenuBook(_thirdData);
                            },
                          ));
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => HomeLoadingPage(),
                  isLoading: () => HomeLoadingPage(),
                  allHomeDataOption: (dataOption) => dataOption.fold(
                        () => HomeLoadingPage(),
                        (a) => a.fold(
                            (l) => HomeErrorPage(), (r) => HomeFeedContainer()),
                      ));
            },
          ),
        ));
  }
}
