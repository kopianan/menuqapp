import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/infrastructure/core/formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeeAllFoodItemWidget extends StatelessWidget {
  const SeeAllFoodItemWidget({
    Key key,
    @required this.menuClassDataWithRestaurant,
  }) : super(key: key);

  final MenuClassData menuClassDataWithRestaurant;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                color: Colors.grey[200],
                offset: Offset.fromDirection(2),
                spreadRadius: 2)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 130,
            margin: EdgeInsets.only(top: 8, left: 8, right: 8),
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(menuClassDataWithRestaurant.mediumUrl),
                )),
          ),
          Container(
            padding: EdgeInsets.only(right: 8, left: 8, top: 5),
            alignment: Alignment.topLeft,
            child: Text(
              menuClassDataWithRestaurant.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(
                top: 2,
                left: 10,
                right: 10,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                Formatter().formatCurrency(
                    double.parse(menuClassDataWithRestaurant.price)),
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }
}
