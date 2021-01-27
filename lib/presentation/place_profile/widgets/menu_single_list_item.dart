import 'package:feroza/application/chart/chart_controller.dart';
import 'package:feroza/domain/chart/chart_data_model.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/infrastructure/core/formatter.dart';
import 'package:feroza/presentation/widgets/add_to_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class MenuSingleListItem extends StatefulWidget {
  const MenuSingleListItem(
      {Key key, @required this.menuClassData, @required this.restaurantId})
      : super(key: key);

  final MenuClassData menuClassData;
  final String restaurantId;

  @override
  _MenuSingleListItemState createState() => _MenuSingleListItemState();
}

class _MenuSingleListItemState extends State<MenuSingleListItem> {
  final controller = Get.put(ChartController());
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.menuClassData.mediumUrl))),
              ),
              flex: 4,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Flex(
                  mainAxisSize: MainAxisSize.max,
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        widget.menuClassData.name,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        Formatter().formatCurrency(
                            double.parse(widget.menuClassData.price)),
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    addToChartButton(() {
                      final _data = ChartDataModel(
                          menuData: widget.menuClassData,
                          restaurantId: widget.restaurantId,
                          quantity: 1);
                      controller.addItemToChart(_data);

                      Fluttertoast.showToast(msg: "Menu Ditambahkan Ke Chart");
                    })
                  ],
                ),
              ),
              flex: 7,
            )
          ],
        ));
  }
}
