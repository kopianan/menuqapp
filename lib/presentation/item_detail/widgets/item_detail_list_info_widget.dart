import 'package:feroza/domain/menu/menu_data.dart';
import 'package:flutter/material.dart';

class ItemDetailListInfoWidget extends StatefulWidget {
  const ItemDetailListInfoWidget({
    Key key,
    @required this.menuClassDataWithRestaurant,
  }) : super(key: key);

  final MenuClassDataWithRestaurant menuClassDataWithRestaurant;

  @override
  _ItemDetailListInfoWidgetState createState() =>
      _ItemDetailListInfoWidgetState();
}

class _ItemDetailListInfoWidgetState extends State<ItemDetailListInfoWidget> {
  bool like;
  @override
  void initState() {
    like = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.menuClassDataWithRestaurant.name,
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                widget.menuClassDataWithRestaurant.price,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                widget.menuClassDataWithRestaurant.restaurant.name,
                style: Theme.of(context).textTheme.headline5,
              )
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    like = !like;
                  });
                },
                child: Icon(
                  (like) ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
