import 'package:flutter/material.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:get/get.dart';

class MenuBookListItem extends StatelessWidget {
  const MenuBookListItem({
    Key key,
    @required this.menuBookData,
    @required this.selectedIndex,
  }) : super(key: key);
  final MenuBookData menuBookData;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return Get.toNamed('/menu_book', arguments: selectedIndex);
      },
      child: Stack(
        children: [
          Container(
            color: Colors.green,
            child: Image.network(
              menuBookData.mediumUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient( 
                  colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text(
                menuBookData.name,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
