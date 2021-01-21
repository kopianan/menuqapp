import 'package:feroza/application/chart/chart_controller.dart';
import 'package:feroza/presentation/chart/chart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChartIcon extends StatelessWidget {
  const ChartIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            Icons.list_alt,
            size: 30,
          ),
          onPressed: () {
            Get.toNamed(ChartPage.TAG);
          },
        ),
        GetBuilder<ChartController>(
          builder: (chart) => (chart.isNullOrBlank)
              ? Container()
              : Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 12,
                    child: Text(chart.chartDataModel.length.toString(),
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        )),
                    backgroundColor: Colors.red,
                  ),
                ),
        )
      ],
    );
  }
}
