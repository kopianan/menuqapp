import 'package:feroza/application/chart/chart_controller.dart';
import 'package:feroza/presentation/chart/chart_page.dart';
import 'package:feroza/presentation/widgets/chart_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetFunction {
  AppBar appBarWithChartIcon(String title) {
    return AppBar(
      title: Text(title),
      actions: [
        Stack(
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
            ChartIcon()
          ],
        ),
      ],
    );
  }
}
