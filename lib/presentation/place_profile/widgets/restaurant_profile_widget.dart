import 'package:feroza/application/restaurant/controller/restuarant_controller.dart';
import 'package:feroza/domain/category/category_data.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:feroza/presentation/place_profile/restaurant_information_page.dart';
import 'package:feroza/presentation/place_profile/widgets/menu_book_container.dart';
import 'package:feroza/presentation/place_profile/widgets/menu_list_container.dart';
import 'package:feroza/presentation/widgets/chart_icon_widget.dart';
import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RestaurantProfileWidget extends StatefulWidget {
  const RestaurantProfileWidget(
      {Key key,
      @required this.getAllRestaurantDataResponse,
      @required this.restaurantId})
      : super(key: key);
  final GetAllRestaurantDataResponse getAllRestaurantDataResponse;
  final String restaurantId;
  @override
  _RestaurantProfileWidgetState createState() =>
      _RestaurantProfileWidgetState();
}

class _RestaurantProfileWidgetState extends State<RestaurantProfileWidget> {
  GetAllRestaurantDataResponse listDataRestaurant;
  List<Widget> restaurantPage;
  int _currentIndex = 0;
  @override
  void initState() {
    listDataRestaurant = widget.getAllRestaurantDataResponse;
    restaurantPage = [
      RestaurantFoodData(getAllRestaurantDataResponse: listDataRestaurant),
      RestaurantInformationPage(
        getAllRestaurantDataResponse: listDataRestaurant,
      )
    ];
    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff6f5fa),
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTapped,
            elevation: 4,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconThemeData(color: secondaryColor),
            selectedLabelStyle: TextStyle(color: secondaryColor),
            selectedItemColor: secondaryColor,
            unselectedItemColor: blackColor,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/menu.svg',
                    height: 30,
                    color: (_currentIndex == 0) ? secondaryColor : blackColor),
                label: "Detail",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/home.svg',
                    height: 30,
                    color: (_currentIndex == 1) ? secondaryColor : blackColor),
                label: "Info",
              ),
            ]),
        body: restaurantPage[_currentIndex]);
  }
}

class RestaurantFoodData extends StatefulWidget {
  const RestaurantFoodData({
    Key key,
    @required GetAllRestaurantDataResponse getAllRestaurantDataResponse,
  })  : _getAllRestaurantDataResponse = getAllRestaurantDataResponse,
        super(key: key);

  final GetAllRestaurantDataResponse _getAllRestaurantDataResponse;

  @override
  _RestaurantFoodDataState createState() => _RestaurantFoodDataState();
}

class _RestaurantFoodDataState extends State<RestaurantFoodData> {
  List<CategoryDataClass> tabs;
  GetAllRestaurantDataResponse _getAllRestaurantDataResponse;
  RestaurantController restaurantController = Get.put(RestaurantController());
  @override
  void initState() {
    _getAllRestaurantDataResponse = widget._getAllRestaurantDataResponse;
    restaurantController.setAllRestaurantData(_getAllRestaurantDataResponse);
    tabs = null;
    tabs = _getAllRestaurantDataResponse.data.categoryList;
    if (tabs.length == 0 || tabs[0].id != "no_id")
      tabs.insert(
          0,
          CategoryDataClass(
              id: "no_id",
              name: "Menu Books",
              restaurantId: _getAllRestaurantDataResponse.data.id));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: NestedScrollView(
        headerSliverBuilder: headerSliverBuilder,
        body: TabBarView(
          children: tabs.map((CategoryDataClass categoryDataClass) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                builder: (BuildContext context) {
                  if (tabs.indexOf(categoryDataClass) == 0) {
                    return MenuBookContainer(
                      pageKey: categoryDataClass.id,
                    );
                  } else {
                    return MenuListContainer(
                        pageKey: categoryDataClass.id,
                        restaurantId: _getAllRestaurantDataResponse.data.id,
                        menuClassDataList: widget._getAllRestaurantDataResponse
                            .data.menuClassDataList);
                  }
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  List<Widget> headerSliverBuilder(
      BuildContext context, bool innerBoxIsScrolled) {
    return [
      SliverOverlapAbsorber(
        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        sliver: SliverAppBar(
          title: Text(
            _getAllRestaurantDataResponse.data.name.toString(),
            style: TextStyle(color: Colors.white),
          ), // This is the title in the app bar.
          pinned: true,
          forceElevated: innerBoxIsScrolled,
          actions: [ChartIcon()],

          bottom: TabBar(
            // indicator: BoxDecoration(color: Colors.green),
            // These are the widgets to put in each tab in the tab bar.
            isScrollable: true,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            tabs: tabs
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
