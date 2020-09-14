import 'package:feroza/application/restaurant/controller/restuarant_controller.dart';
import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:feroza/domain/restaurant/single_restaurant_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'menu_book_list_item.dart';

class MenuBookContainer extends StatefulWidget {
  MenuBookContainer({Key key, @required this.pageKey}) : super(key: key);
  final String pageKey;

  @override
  _MenuBookContainerState createState() => _MenuBookContainerState();
}

class _MenuBookContainerState extends State<MenuBookContainer> {
  RestaurantController restaurantController = Get.put(RestaurantController());
  SingleRestaurantCompleteData _allRestaurantData;
  @override
  void initState() {
    _allRestaurantData = restaurantController.getAllRestaurantData.data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: PageStorageKey<String>(widget.pageKey),
      slivers: <Widget>[
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return MenuBookListItem(
                menuBookData: _allRestaurantData.menuBookDataList[index],
                selectedIndex: index,
              );
            }, childCount: _allRestaurantData.menuBookDataList.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
            ),
          ),
        ),
      ],
    );
  }
}
