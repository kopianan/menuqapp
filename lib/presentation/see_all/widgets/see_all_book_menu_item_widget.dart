import 'package:flutter/material.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:get/get.dart';

class SeeAllBookMenuItemWidget extends StatelessWidget {
  const SeeAllBookMenuItemWidget({
    Key key,
    @required this.menuBookData,
  }) : super(key: key);
  final MenuBookData menuBookData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/restaurant_profile',
            arguments: menuBookData.restaurant.id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      menuBookData.mediumUrl,
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
                      menuBookData.restaurant.name,
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
    );
  }
}
