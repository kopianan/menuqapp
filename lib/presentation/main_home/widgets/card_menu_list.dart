import 'package:feroza/application/chart/chart_controller.dart';
import 'package:feroza/domain/chart/chart_data_model.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/infrastructure/core/formatter.dart';
import 'package:feroza/presentation/widgets/add_to_chart_widget.dart';
import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CardMenuList extends StatefulWidget {
  const CardMenuList({
    Key key,
    @required this.menuClassData,
  }) : super(key: key);

  final MenuClassData menuClassData;

  @override
  _CardMenuListState createState() => _CardMenuListState();
}

class _CardMenuListState extends State<CardMenuList> {
  final ChartController _chartController = Get.put(ChartController());

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(
          top: 10,
        ),
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  Formatter().formatCurrency(
                                      double.parse(widget.menuClassData.price)),
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              addToChartButton(() {
                                ChartDataModel _data = ChartDataModel(
                                    menuData: widget.menuClassData,
                                    restaurantId:
                                        widget.menuClassData.restaurantId,
                                    quantity: 1);
                                _chartController.addItemToChart(_data);
                                Fluttertoast.showToast(
                                    msg: "Menu Ditambahkan Ke Chart");
                              })
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              flex: 7,
            )
          ],
        ));
  }
}
