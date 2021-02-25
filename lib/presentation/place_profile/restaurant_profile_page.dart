import 'package:feroza/application/restaurant/controller/restaurant_controller.dart';
import 'package:feroza/application/restaurant/restaurant_bloc.dart';
import 'package:feroza/injection.dart';
import 'package:feroza/presentation/components/default_button.dart';
import 'package:feroza/presentation/components/default_outline_button.dart';
import 'package:feroza/presentation/main_home/widgets/home_food_card_item.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import 'components/products_page.dart';

class RestaurantProfilePage extends StatefulWidget {
  static final String TAG = '/restaurant_profile';
  RestaurantProfilePage({Key key}) : super(key: key);

  @override
  _RestaurantProfilePageState createState() => _RestaurantProfilePageState();
}

class _RestaurantProfilePageState extends State<RestaurantProfilePage> {
  final restaurantController = Get.put(RestaurantController());
  String _restaurantId;
  @override
  void initState() {
    _restaurantId = Get.arguments as String;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RestaurantBloc>()
        ..add(RestaurantEvent.getCompleteRestaurantData(
            restaurantId: _restaurantId)),
      child: BlocConsumer<RestaurantBloc, RestaurantState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              completeRestaurantDataOption: (e) {
                e.restaurantList.fold(
                  () => {},
                  (a) => a.fold(
                    (l) => {},
                    (r) =>
                        restaurantController.setDataCurrentRestaurant(r.data),
                  ),
                );
              });
        },
        builder: (context, state) => state.maybeMap(
            orElse: () => Scaffold(
                  body: CircularProgressIndicator(),
                ),
            completeRestaurantDataOption: (e) {
              if (e.isLoading) {
                return Scaffold(
                  body: CircularProgressIndicator(),
                );
              } else {
                return Scaffold(
                    body: DefaultTabController(
                  length: 2,
                  child: CustomScrollView(slivers: [
                    sliverAppBar(),
                    buildSliverFillRemaining(),
                  ]),
                ));
              }
            }),
      ),
    );
  }

  SliverFillRemaining buildSliverFillRemaining() {
    return SliverFillRemaining(
      hasScrollBody: true,
      fillOverscroll: true,
      child: TabBarView(
        children: [ProductsPage(), Container(color: Colors.pink)],
      ),
    );
  }

  SliverAppBar sliverAppBar() {
    return SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        collapseMode: CollapseMode.parallax,
        background: Image.asset(
          'assets/images/banner1.png',
          fit: BoxFit.cover,
        ),
      ),
      pinned: true,
      floating: true,
      expandedHeight: 200,
      backgroundColor: Colors.white,
      bottom: TabBar(
          isScrollable: false,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 3,
          tabs: [
            Container(
              child: Tab(text: "Products"),
            ),
            Container(
              child: Tab(text: "Information"),
            ),
          ]),
    );
  }
}
