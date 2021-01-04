import 'package:carousel_slider/carousel_slider.dart';
import 'package:feroza/application/menu/controller/menu_controller.dart';
import 'package:feroza/application/restaurant/controller/restuarant_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:feroza/domain/menu/menu_data.dart';

class MenuBookPage extends StatefulWidget {
     static final  String TAG = '/menu_book';
  MenuBookPage({Key key}) : super(key: key);

  @override
  _MenuBookPageState createState() => _MenuBookPageState();
}

class _MenuBookPageState extends State<MenuBookPage> {
  int _current;
  String title;
  List<MenuBookData> _menuBookData;
  CarouselController carouselController = CarouselController();
  RestaurantController _restaurantController = Get.put(RestaurantController());

  @override
  void initState() {
    _current = Get.arguments as int;

    //get from previouse page and get the selected index for the carousel

    _menuBookData =
        _restaurantController.getAllRestaurantData.data.menuBookDataList;
    title = _menuBookData[_current].name;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(title.toString()),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(children: [
        CarouselSlider(
          items: _menuBookData
              .map((item) => InkWell(
                    onTap: () => Get.toNamed('/photo_view',
                        arguments: [item.name, item.largeUrl]),
                    child: Container(
                      child: Image.network(item.mediumUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity),
                    ),
                  ))
              .toList(),
          carouselController: carouselController,
          options: CarouselOptions(
              initialPage: _current,
              height: MediaQuery.of(context).size.height,
              enlargeCenterPage: false,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                  title = _menuBookData[_current].name;
                });
              }),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _menuBookData.map((url) {
              int index = _menuBookData.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.yellow : Colors.white),
              );
            }).toList(),
          ),
        ),
      ]),
    );
  }
}
