import 'package:feroza/application/chart/chart_controller.dart';
import 'package:feroza/domain/chart/chart_data_model.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/infrastructure/core/formatter.dart';
import 'package:feroza/presentation/widgets/add_to_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class SeeAllFoodItemWidget extends StatelessWidget {
  SeeAllFoodItemWidget({
    Key key,
    @required this.menuClassDataWithRestaurant,
  }) : super(key: key);

  final MenuClassData menuClassDataWithRestaurant;
  final _controller = Get.put(ChartController());
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
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 8, left: 8, right: 8),
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(menuClassDataWithRestaurant.mediumUrl),
                  )),
            ),
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
          Container(
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
          Divider(
            height: 0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              addToChartButton(() {
                final _data = ChartDataModel(
                    menuData: menuClassDataWithRestaurant,
                    restaurantId: menuClassDataWithRestaurant.restaurantId,
                    quantity: 1);
                _controller.addItemToChart(_data);

                Fluttertoast.showToast(msg: "Menu Ditambahkan Ke Chart");
              })
            ],
          )
        ],
      ),
    );
  }
}
