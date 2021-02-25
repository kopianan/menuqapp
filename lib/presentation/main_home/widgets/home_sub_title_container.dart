import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';

class HomeSubTitleContainer extends StatelessWidget {
  const HomeSubTitleContainer(
      {Key key, @required this.title, @required this.onSeeAll})
      : super(key: key);
  final String title;
  final Function onSeeAll;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(right: 20, left: 20),
      title: Text(title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      trailing: (onSeeAll == null)
          ? null
          : InkWell(
              onTap: onSeeAll,
              child: Text("View All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kSecondaryColor))),
    );
  }
}
