import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:feroza/application/chart/chart_controller.dart';
import 'package:feroza/application/home/bloc/home_bloc.dart';
import 'package:feroza/application/location/cubit/location_cubit.dart';
import 'package:feroza/domain/menu/menu_req_res.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:feroza/presentation/chart/chart_page.dart';
import 'package:feroza/presentation/main_home/widgets/card_menu_list.dart';
import 'package:feroza/presentation/main_home/widgets/home_food_card_item.dart';
import 'package:feroza/presentation/main_home/widgets/home_restaurant_card_item.dart';
import 'package:feroza/presentation/main_home/widgets/home_sub_title_container.dart';
import 'package:feroza/presentation/see_all/see_all_food_page.dart';
import 'package:feroza/presentation/see_all/see_all_menu_book_page.dart';
import 'package:feroza/presentation/see_all/see_all_page.dart';
import 'package:feroza/util/pref.dart';
import 'package:flutter/material.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:feroza/presentation/main_home/widgets/home_menu_book_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../injection.dart';

class HomeFeedContainer extends StatefulWidget {
  const HomeFeedContainer();

  @override
  _HomeFeedContainerState createState() => _HomeFeedContainerState();
}

class _HomeFeedContainerState extends State<HomeFeedContainer>
    with SingleTickerProviderStateMixin {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final locationCubit = LocationCubit();

  void initState() {
    super.initState();
  }

  final homeBloc = getIt<HomeBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeBloc,
      child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                allHomeDataOption: (e) {
                  e.dataOption.fold(
                    () => {},
                    (a) => _refreshController.refreshCompleted(),
                  );
                });
          },
          builder: (context, state) => SafeArea(
                child: SmartRefresher(
                    enablePullUp: false,
                    enablePullDown: true,
                    header: WaterDropHeader(),
                    controller: _refreshController,
                    onLoading: () {},
                    onRefresh: () {
                      homeBloc.add(HomeEvent.requestHomeData("3,3"));
                    },
                    child: CustomScrollView(
                      slivers: [HomeAppBar(), HomeBody()],
                    )),
              )),
    );
  }

  List<Widget> scrollViewList = [];
}

class HomeBody extends StatefulWidget {
  const HomeBody({
    Key key,
  }) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<String> imageUrl = ['assets/images/banner1.png'];
  GetRestaurantListResponse restaurantData;
  MenuBookResponse menuBookResponse;
  MenuResponse menuResponse;
  @override
  void initState() {
    restaurantData = loadRestaurantListData();
    menuBookResponse = loadMenuBookListData();
    menuResponse = loadMenuListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          HomeSubTitleContainer(
            onSeeAll: null,
            title: "Offering Today",
          ),
          _promoCarousel(),
          SizedBox(
            height: 10,
          ),
          Column(
            children: <Widget>[
              HomeSubTitleContainer(
                onSeeAll: () {
                  Get.toNamed(SeeAllPage.TAG);
                },
                title: "Nearby Place",
              ),
              listPlace(restaurantData.data),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: <Widget>[
              HomeSubTitleContainer(
                onSeeAll: () {
                  Get.toNamed(SeeAllPage.TAG);
                },
                title: "Open Now",
              ),
              listPlace(restaurantData.data),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              HomeSubTitleContainer(
                onSeeAll: () {
                  Get.toNamed(SeeAllFoodPage.TAG);
                },
                title: "Food List",
              ),
              listAllMenu(menuResponse.data),
            ],
          )
        ],
      ),
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

  Container listAllMenu(List<MenuData> listMenu) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: ListView.builder(
          itemCount: listMenu.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => CardMenuList(
                menuClassData: listMenu[index],
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
      // child: ListView.builder(
      //     shrinkWrap: true,
      //     itemCount: dataList.length,
      //     scrollDirection: Axis.horizontal,
      //     itemBuilder: (context, index) => HomeFoodCardItem(
      //           menuClassData: dataList[index],
      //         )),
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

class HomeAppBar extends StatelessWidget {
  HomeAppBar({
    Key key,
  }) : super(key: key);

  final List<String> chars = [
    'assets/images/char1.png',
    'assets/images/char2.png',
    'assets/images/char3.png',
    'assets/images/char4.png',
    'assets/images/char5.png',
    'assets/images/char6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
                  Text("Alamant saat ini, no 54")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[200],
                  spreadRadius: 3,
                  blurRadius: 4,
                )
              ],
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(chars[Random().nextInt(chars.length)]),
                fit: BoxFit.fitHeight,
              ),
            ),
          )
        ],
      ),
    );
  }
}
