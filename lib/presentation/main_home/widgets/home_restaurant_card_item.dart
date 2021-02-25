import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:feroza/presentation/place_profile/restaurant_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeRestaurantCardItem extends StatelessWidget {
  const HomeRestaurantCardItem({Key key, @required this.restaurantData})
      : super(key: key);
  final RestaurantData restaurantData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.toNamed(RestaurantProfilePage.TAG, arguments: restaurantData.id),
      child: Container(
        width: 160,
        margin: EdgeInsets.only(right: 15),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Container(
              width: 160,
              height: 120,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: (restaurantData.logoUrl == null)
                          ? AssetImage(
                              "assets/images/placeholder.jpg",
                            )
                          : NetworkImage(restaurantData.logoUrl))),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 8, left: 5, right: 5),
                child: Text(
                  restaurantData.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
