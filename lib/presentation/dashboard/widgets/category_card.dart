import 'package:feroza/domain/scan/menu.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key key, this.onClick, this.categories})
      : super(key: key);
  final Function onClick;
  final Categories categories;

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onClick();
      },
      child: Container(
        width: 80,
        child: Column(
          children: <Widget>[
            new Container(
              width: 70.0,
              height: 70.0,
              decoration: new BoxDecoration(
                color: const Color(0xff7c94b6),
                image: new DecorationImage(
                  image: (widget.categories.menuPhotos.isEmpty)
                      ? AssetImage("assets/images/gambar.jpg")
                      : NetworkImage(
                          widget.categories.menuPhotos[0].smallUrl,
                        ),
                  fit: BoxFit.cover,
                ),
                borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                border: new Border.all(
                  color: (widget.categories.isSelected)
                      ? Theme.of(context).accentColor
                      : Colors.white,
                  width: 5.0,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "${widget.categories.name}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
