import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';

class DefaultOutlineButton extends StatelessWidget {
  const DefaultOutlineButton({
    @required this.icon,
    @required this.press,
  });
  final Icon icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      padding: EdgeInsets.zero,
      borderSide: BorderSide(color: kAccentColor, width: 2),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: press,

      child: icon,
      // Text(
      //   text,
      //   style: TextStyle(
      //       fontSize: 25, fontWeight: FontWeight.bold, color: kAccentColor),
      // ),
    );
  }
}
