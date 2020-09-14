import 'package:flutter/material.dart';

class ItemDetailLoadingPage extends StatelessWidget {
  const ItemDetailLoadingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
