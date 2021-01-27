import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:feroza/application/chart/chart_controller.dart';
import 'package:feroza/application/home/bloc/home_bloc.dart';
import 'package:feroza/application/location/cubit/location_cubit.dart';
import 'package:feroza/infrastructure/location/location_service.dart';
import 'package:feroza/presentation/chart/chart_page.dart';
import 'package:feroza/presentation/main_home/widgets/card_menu_list.dart';
import 'package:feroza/presentation/main_home/widgets/home_food_card_item.dart';
import 'package:feroza/presentation/main_home/widgets/home_restaurant_card_item.dart';
import 'package:feroza/presentation/main_home/widgets/home_sub_title_container.dart';
import 'package:feroza/presentation/place_profile/restaurant_profile_page.dart';
import 'package:feroza/presentation/scanner/scanner_page.dart';
import 'package:feroza/presentation/see_all/see_all_food_page.dart';
import 'package:feroza/presentation/see_all/see_all_menu_book_page.dart';
import 'package:feroza/presentation/see_all/see_all_page.dart';
import 'package:flutter/material.dart';
// import 'package:barcode_scan/barcode_scan.dart';
import 'package:feroza/application/core/controller/location_controller.dart';
import 'package:feroza/application/core/cubit/location_cubit.dart';
import 'package:feroza/application/menu/controller/menu_controller.dart';
import 'package:feroza/application/restaurant/controller/restuarant_controller.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:feroza/presentation/main_home/widgets/home_menu_book_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
// import 'package:geolocator/geolocator.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFeedContainer extends StatefulWidget {
  const HomeFeedContainer();

  @override
  _HomeFeedContainerState createState() => _HomeFeedContainerState();
}

class _HomeFeedContainerState extends State<HomeFeedContainer>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController;
  AnimationController _hideFabAnimController;

  RestaurantController restaurantController = Get.put(RestaurantController());
  MenuController menuController = Get.put(MenuController());
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final locationCubit = LocationCubit();

  @override
  void dispose() {
    _scrollController.dispose();
    _hideFabAnimController.dispose();
  
    super.dispose();
  }

  void initState() {
    super.initState();
    

    _scrollController = ScrollController();
    _hideFabAnimController = AnimationController(
      vsync: this,
      duration: kThemeAnimationDuration,
      value: 1, // initially visible
    );

    _scrollController.addListener(() {
      switch (_scrollController.position.userScrollDirection) {
        // Scrolling up - forward the animation (value goes to 1)
        case ScrollDirection.forward:
          _hideFabAnimController.forward();
          break;
        // Scrolling down - reverse the animation (value goes to 0)
        case ScrollDirection.reverse:
          _hideFabAnimController.reverse();
          break;
        // Idle - keep FAB visibility unchanged
        case ScrollDirection.idle:
          break;
      }
    });
  }

  List<String> imageUrl = ["assets/images/banner1.png"];
  Stream stream;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locationCubit..getCurrentLocation(),
      child: BlocConsumer<LocationCubit, LocationState>(
          listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            onSuccess: (e) {
              //get location
              print(e.position[0].street);
            });
      }, builder: (context, state) {
        return Scaffold(
          backgroundColor: Color(0xfff6f5fa),
          body: SafeArea(
            child: GetBuilder<LocationController>(
              builder: (locationController) => SmartRefresher(
                enablePullUp: false,
                enablePullDown: true,
                header: WaterDropHeader(),
                controller: _refreshController,
                onLoading: () {},
                onRefresh: () {
                  locationCubit.getCurrentLocation();
                  context.read<HomeBloc>()
                    ..add(HomeEvent.requestHomeData(
                        locationController.getCurrentPosition));
                },
                child: CustomScrollView(
                  controller: _scrollController,
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("WELCOME",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    state.maybeMap(
                                        orElse: () => "Loading...",
                                        onSuccess: (e) {
                                          return e.position[0].street
                                              .toString();
                                        }),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            alignment: Alignment.center,
                            child: Stack(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.list_alt,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Get.toNamed(ChartPage.TAG);
                                  },
                                ),
                                GetBuilder<ChartController>(
                                  builder: (chart) => (chart.isNullOrBlank)
                                      ? Container()
                                      : Positioned(
                                          top: 0,
                                          right: 0,
                                          child: CircleAvatar(
                                            radius: 12,
                                            child: Text(
                                                chart.chartDataModel.length
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                )),
                                            backgroundColor: Colors.red,
                                          ),
                                        ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          HomeSubTitleContainer(
                            onSeeAll: null,
                            title: "Offering Today",
                          ),
                          _promoCarousel(),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: <Widget>[
                              HomeSubTitleContainer(
                                onSeeAll: () {
                                  Get.toNamed(SeeAllPage.TAG);
                                },
                                title: "Nearby Place",
                              ),
                              listPlace(
                                  restaurantController.getRestaurantData.data),
                            ],
                          ),
                          // Column(
                          //   children: <Widget>[
                          //     HomeSubTitleContainer(
                          //       onSeeAll: () {
                          //         Get.toNamed(SeeAllFoodPage.TAG);
                          //       },
                          //       title: "Nearby Food",
                          //     ),
                          //     listItem(menuController.getMenuData.data),
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          Column(
                            children: <Widget>[
                              HomeSubTitleContainer(
                                onSeeAll: () {
                                  Get.toNamed(SeeAllMenuBookPage.TAG);
                                },
                                title: "Book Menu",
                              ),
                              listMenuBookData(menuController.getMenuBook.data),
                              // Container(child: ,)
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              HomeSubTitleContainer(
                                onSeeAll: () {
                                  Get.toNamed(SeeAllFoodPage.TAG);
                                },
                                title: "Food List",
                              ),
                              listAllMenu(),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FadeTransition(
            opacity: _hideFabAnimController,
            child: ScaleTransition(
              scale: _hideFabAnimController,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                elevation: 4,
                splashColor: Colors.yellow,
                onPressed: () async {
                  var restaurantId = await Get.toNamed(ScannerPage.TAG);
                  try {
                    if (restaurantId == null) return;
                    Get.toNamed(RestaurantProfilePage.TAG,
                        arguments: restaurantId);
                  } catch (e) {}
                },
                child: Icon(
                  MdiIcons.barcodeScan,
                  color: Colors.black,
                ),
                // elevation: 5.0,
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _promoCarousel() {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                // height: 100.0,

                aspectRatio: 350 / 100,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                height: 90,
                enlargeCenterPage: false),
            items: imageUrl.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: () async {
                      await launch('http://menuq.co');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(i), fit: BoxFit.cover)),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Container listAllMenu() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: ListView.builder(
          itemCount: menuController.getMenuData.data.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => CardMenuList(
                menuClassData: menuController.getMenuData.data[index],
              )),
    );
  }

  SizedBox sizedBox() {
    return SizedBox(
      height: 10,
    );
  }

  Widget listItem(List<MenuClassData> dataList) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      height: 210,
      margin: EdgeInsets.only(left: 20),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: dataList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => HomeFoodCardItem(
                menuClassData: dataList[index],
              )),
    );
  }

  Widget listMenuBookData(List<MenuBookData> menuBookList) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(left: 20),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: menuBookList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => HomeMenuBookContainer(
                menuBookData: menuBookList[index],
                selectedIndex: 0,
              )),
    );
  }

  Widget listPlace(List<RestaurantData> data) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 170,
      child: ListView.builder(
          itemCount: data.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              HomeRestaurantCardItem(restaurantData: data[index])),
    );
  }
}
