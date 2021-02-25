import 'package:flutter/material.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:get/get.dart';

class HomeMenuBookContainer extends StatelessWidget {
  const HomeMenuBookContainer({
    Key key,
    @required this.menuBookData,
    @required this.selectedIndex,
  }) : super(key: key);
  final MenuBookData menuBookData;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/restaurant_profile',
            arguments: menuBookData.restaurant.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      onError: (context, trace) {
                        return Container(
                          color: Colors.red,
                          child: Text("404"),
                        );
                      },
                      image: NetworkImage(
                        (menuBookData.mediumUrl == null)
                            ? "error"
                            : menuBookData.mediumUrl,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        menuBookData.name,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Tsest',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
