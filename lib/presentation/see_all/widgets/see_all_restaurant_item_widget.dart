import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeeAllRestaurantItemWidget extends StatelessWidget {
  const SeeAllRestaurantItemWidget({Key key, @required this.restaurantData})
      : super(key: key);
  final RestaurantData restaurantData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.toNamed('/restaurant_profile', arguments: restaurantData.id),
      child: Container(
        width: double.infinity,
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Flexible(
              flex: 9,
              child: Container(
                // width: 160,
                height: 170,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: (restaurantData.logoUrl == null)
                            ? AssetImage(
                                "assets/images/indomaret.jpeg",
                              )
                            : NetworkImage(restaurantData.logoUrl))),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                child: Text(
                  restaurantData.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(
                  top: 2,
                ),
                child: Text(
                  restaurantData.name,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  maxLines: 1,
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
