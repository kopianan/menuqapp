import 'dart:async';

import 'package:feroza/application/home/bloc/home_bloc.dart';
import 'package:feroza/infrastructure/location/location_service.dart';
import 'package:feroza/presentation/main_home/widgets/card_menu_list.dart';
import 'package:feroza/presentation/main_home/widgets/home_food_card_item.dart';
import 'package:feroza/presentation/main_home/widgets/home_restaurant_card_item.dart';
import 'package:feroza/presentation/main_home/widgets/home_sub_title_container.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:feroza/application/core/controller/location_controller.dart';
import 'package:feroza/application/core/cubit/location_cubit.dart';
import 'package:feroza/application/menu/controller/menu_controller.dart';
import 'package:feroza/application/restaurant/controller/restuarant_controller.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:feroza/presentation/main_home/widgets/home_menu_book_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:geolocator/geolocator.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeFeedContainer extends StatefulWidget {
  const HomeFeedContainer({
    Key key,
  }) : super(key: key);

  @override
  _HomeFeedContainerState createState() => _HomeFeedContainerState();
}

class _HomeFeedContainerState extends State<HomeFeedContainer> {
  RestaurantController restaurantController = Get.put(RestaurantController());
  MenuController menuController = Get.put(MenuController());
  LocationController locationController = Get.put(LocationController());
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  // var geolocator = Geolocator();
  // var locationOptions =
  //     LocationOptions(accuracy: LocationAccuracy.medium, distanceFilter: 50);
  // Position position;
  // LocationCubit locationCubit = LocationCubit() ;
  @override
  void initState() {
    restaurantController = Get.put(RestaurantController());
    menuController = Get.put(MenuController());
    locationController = Get.put(LocationController());

    // LocationService().getLocationStream.listen((event) {
    //   print(event.toJson());
    //   position = event;
    //   locationCubit.getCurrentLocatoinPlaceMark(event.latitude, event.longitude);
    // });

    super.initState();
  }

  Stream stream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f5fa),
      body: SafeArea(
        child: SmartRefresher(
          enablePullUp: false,
          enablePullDown: true,
          header: WaterDropHeader(),
          controller: _refreshController,
          onLoading: () {},
          onRefresh: () {
            context.bloc<HomeBloc>()
              ..add(HomeEvent.requestHomeData(
                  locationController.getCurrentPosition));
          },
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome!",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          // StreamProvider<Position>(
                          //   initialData: locationController.getCurrentPosition,
                          //   create: (context) =>
                          //       LocationService().getLocationStream,
                          //   builder: (context, _) => Text(locationController
                          //       .getCurrentPosition.latitude
                          //       .toString()),
                          // ),
                          // BlocProvider(
                          //   create: (context) => locationCubit,
                          //   child: BlocBuilder<LocationCubit, LocationState>(
                          //     builder: (context, state) {
                          //       return state.maybeMap(
                          //         orElse: () {
                          //           return Text("Undefined");
                          //         },
                          //         currentPlaceMark: (value) {
                          //           final data = value.placemark.first;
                          //           return Container(
                          //               width: double.infinity,
                          //               child: Text(
                          //                 "${data.subLocality}, ${data.locality}\n${data.administrativeArea}, ${data.country} ",
                          //                 textAlign: TextAlign.right,
                          //                 style: TextStyle(
                          //                   fontSize: 16,
                          //                 ),
                          //               ));
                          //         },
                          //       );
                          //     },
                          //   ),
                          // ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.search),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: "Find place or food"))
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        HomeSubTitleContainer(
                          onSeeAll: () {
                            Get.toNamed('/see_all');
                          },
                          title: "Nearby Place",
                        ),
                        listPlace(restaurantController.getRestaurantData.data),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        HomeSubTitleContainer(
                          onSeeAll: () {
                            Get.toNamed('/see_all_food');
                          },
                          title: "Nearby Food",
                        ),
                        listItem(menuController.getMenuData.data),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        HomeSubTitleContainer(
                          onSeeAll: () {},
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
                          onSeeAll: () {},
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
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 4,
            splashColor: Colors.yellow,
            onPressed: () async {
              try {
                var result = await BarcodeScanner.scan();
                String _id = result.rawContent.split("/").last;

                Get.toNamed('/restaurant_profile', arguments: _id);
              } catch (e) {
                print(e.toString());
              }
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
