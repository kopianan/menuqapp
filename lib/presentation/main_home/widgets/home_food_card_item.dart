import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/infrastructure/core/formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeFoodCardItem extends StatelessWidget {
  const HomeFoodCardItem({
    Key key,
    @required this.menuClassData,
  }) : super(key: key);

  final MenuClassData menuClassData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 190,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 130,
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(menuClassData.mediumUrl),
                )),
          ),
          Container(
            padding: EdgeInsets.only(right: 8, left: 8, top: 8),
            alignment: Alignment.topLeft,
            child: Text(
              menuClassData.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(
                top: 5,
                left: 10,
                right: 10,
                bottom: 8,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                Formatter().formatCurrency(double.parse(menuClassData.price)),
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
