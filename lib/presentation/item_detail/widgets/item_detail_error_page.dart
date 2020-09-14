import 'package:flutter/material.dart';

class ItemDetailErrorPage extends StatelessWidget {
  const ItemDetailErrorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Something Wrong",
              style: TextStyle(
                fontSize: 40,
                color: Colors.grey,
              )),
        ],
      ),
    ));
  }
}
