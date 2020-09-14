import 'package:flutter/material.dart';

class RestaurantProfileLoadingWidget extends StatelessWidget {
  const RestaurantProfileLoadingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
