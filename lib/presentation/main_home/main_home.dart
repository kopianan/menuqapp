import 'dart:io';
import 'package:feroza/presentation/cart/cart_page.dart';
import 'package:feroza/presentation/my_order/my_order_page.dart';
import 'package:feroza/presentation/search/search_page.dart';
import 'package:feroza/presentation/splash_screen/splash_screen_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'container/home_feed_container.dart';

class MainHome extends StatefulWidget {
  static final String TAG = '/main_home';
  MainHome({Key key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  void initState() {
    super.initState();
  }

  PageController pageController = PageController();
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageViewBuilder(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  PageView pageViewBuilder() {
    List<Widget> listPage = [
      HomeFeedContainer(),
      MyOrderPage()
      // Container(color: Colors.pink),
    ];
    return PageView.builder(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      onPageChanged: (index) {
        //page changed
        setState(() {
          _selectedPage = index;
        });
      },
      itemCount: listPage.length,
      itemBuilder: (context, position) {
        return listPage[position];
      },
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        pageController.jumpToPage(index);
      },
      currentIndex: _selectedPage,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded), label: "Cart"),
        // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}

void openDialogLocation(BuildContext context) {
  String iosSetting =
      "Settings > Privacy > Location Services > Menuq > Choose 'Always' and back to application";
  String androidSetting =
      "Open Setting > Permission > Location, Allow the location permission";
  Get.dialog(AlertDialog(
    title: Text("Location Permission"),
    content: Container(
      margin: EdgeInsets.all(10),
      child: Text((Platform.isIOS) ? iosSetting : androidSetting),
    ),
    actions: [
      FlatButton(
          onPressed: () {
            Navigator.pop(context);
            Get.offAll(SplashScreenPage());
          },
          child: Text(
            "Refresh This Page",
            style: TextStyle(color: Colors.grey),
          )),
      FlatButton(
          onPressed: () {
            openAppSettings();
          },
          child: Text("Open Setting"))
    ],
  ));
}
