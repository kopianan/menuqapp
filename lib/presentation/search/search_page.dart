import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(itemBuilder: (context, index) {
        return Container(
          height: 120,
          margin: EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Expanded(
                  flex: 45,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage('assets/images/placeholder.jpg'),
                            fit: BoxFit.cover)),
                  )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 55,
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Category"),
                        Row(
                          children: [
                            Icon(Icons.star, size: 15),
                            Icon(Icons.star, size: 15),
                            Icon(Icons.star, size: 15),
                            Icon(Icons.star, size: 15),
                            Icon(Icons.star, size: 15),
                          ],
                        ),
                        Text(
                          "Judul tempat atau nama tempat",
                          maxLines: 2,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Location",
                          maxLines: 2,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        );
      }),
    );
  }
}
