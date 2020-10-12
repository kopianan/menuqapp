import 'package:feroza/application/restaurant/controller/restuarant_controller.dart';
import 'package:feroza/domain/category/category_data.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:feroza/presentation/place_profile/widgets/menu_book_container.dart';
import 'package:feroza/presentation/place_profile/widgets/menu_list_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantProfileWidget extends StatefulWidget {
  const RestaurantProfileWidget({
    Key key,
    @required this.getAllRestaurantDataResponse,
  }) : super(key: key);
  final GetAllRestaurantDataResponse getAllRestaurantDataResponse;
  @override
  _RestaurantProfileWidgetState createState() =>
      _RestaurantProfileWidgetState();
}

class _RestaurantProfileWidgetState extends State<RestaurantProfileWidget> {
  List<CategoryDataClass> _tabs;
  GetAllRestaurantDataResponse _getAllRestaurantDataResponse;
  RestaurantController restaurantController = Get.put(RestaurantController());
  @override
  void initState() {
    restaurantController
        .setAllRestaurantData(widget.getAllRestaurantDataResponse);

    _getAllRestaurantDataResponse = widget.getAllRestaurantDataResponse;
    _tabs = widget.getAllRestaurantDataResponse.data.categoryList;
    _tabs.insert(
        0,
        CategoryDataClass(
            id: "no_id",
            name: "Menu Books",
            restaurantId: widget.getAllRestaurantDataResponse.data.id));

    print(_tabs);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff6f5fa),
        body: DefaultTabController(
          length: _tabs.length,
          child: NestedScrollView(
            headerSliverBuilder: headerSliverBuilder,
            body: TabBarView(
              children: _tabs.map((CategoryDataClass categoryDataClass) {
                return SafeArea(
                  top: false,
                  bottom: false,
                  child: Builder(
                    builder: (BuildContext context) {
                      if (_tabs.indexOf(categoryDataClass) == 0) {
                        return MenuBookContainer(
                          pageKey: categoryDataClass.id,
                        );
                      } else {
                        return MenuListContainer(
                            pageKey: categoryDataClass.id,
                            menuClassDataList: _getAllRestaurantDataResponse
                                .data.menuClassDataList);
                      }
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ));
  }

  List<Widget> headerSliverBuilder(
      BuildContext context, bool innerBoxIsScrolled) {
    return [
      SliverOverlapAbsorber(
        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        sliver: SliverAppBar(
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                iconSize: 25,
                icon: Icon(
                  Icons.pin_drop,
                ),
                color: Colors.black,
                onPressed: () {},
              ),
            )
          ],
          title: Text(
            widget.getAllRestaurantDataResponse.data.name.toString(),
            style: TextStyle(color: Colors.black),
          ), // This is the title in the app bar.
          pinned: true,
          expandedHeight: 200.0,
          forceElevated: innerBoxIsScrolled,
          backgroundColor: Color(0xffedda4a),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://picsum.photos/200/300"))),
            ),
          ),

          bottom: TabBar(
            // indicator: BoxDecoration(color: Colors.green),
            // These are the widgets to put in each tab in the tab bar.
            isScrollable: true,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            tabs: _tabs
                .map((CategoryDataClass categoryDataClass) => Container(
                      child: Tab(text: categoryDataClass.name),
                    ))
                .toList(),
          ),
        ),
      ),
    ];
  }
}
