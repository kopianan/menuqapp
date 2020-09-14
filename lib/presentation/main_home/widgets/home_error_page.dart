import 'package:feroza/presentation/splash_screen/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeErrorPage extends StatelessWidget {
  const HomeErrorPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Refresh This Page Please",
              style: TextStyle(fontSize: 18, color: Colors.black45),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.offAllNamed('/splash_screen'); 
              },
              child: Icon(
                Icons.refresh,
                color: Colors.black45,
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
