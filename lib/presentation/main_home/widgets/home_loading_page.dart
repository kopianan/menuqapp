import 'package:flutter/material.dart';

class HomeLoadingPage extends StatelessWidget {
  const HomeLoadingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Text(
              "Loading",
              style: TextStyle(fontSize: 20, color: Colors.black45),
            )
          ],
        ),
      ),
    );
  }
}
