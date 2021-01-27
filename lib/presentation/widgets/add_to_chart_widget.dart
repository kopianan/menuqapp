import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';

Container addToChartButton(Function onTap) {
  return Container(
    margin: EdgeInsets.only(right: 5),
    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
    alignment: Alignment.topRight,
    child: InkWell(
        splashColor: primaryColor,
        onTap: () {
          //save food id and restaurant id.
          onTap();
        },
        child: Text(
          "Add To Chart",
          style: TextStyle(
            color: secondaryColor,
            fontSize: 12,
          ),
        )),
  );
}
