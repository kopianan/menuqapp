import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/presentation/item_detail/widgets/item_detail_list_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuItemDetailContentWidget extends StatelessWidget {
  const MenuItemDetailContentWidget({
    Key key,
    @required this.menuClassDataWithRestaurant,
  }) : super(key: key);

  final MenuClassDataWithRestaurant menuClassDataWithRestaurant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            color: Colors.grey[100],
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.dstATop),
              image: NetworkImage(menuClassDataWithRestaurant.smallUrl),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              menuClassDataWithRestaurant.name,
              style: TextStyle(color: Colors.black),
            ),
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Get.toNamed('/photo_view', arguments: [
                        menuClassDataWithRestaurant.name,
                        menuClassDataWithRestaurant.largeUrl
                      ]);
                    },
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 3 +
                          kToolbarHeight,
                      child: Image.network(
                        menuClassDataWithRestaurant.largeUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ItemDetailListInfoWidget(
                    menuClassDataWithRestaurant: menuClassDataWithRestaurant,
                  ),
                  Divider(),
                  storeAndLocation(context),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      child: Text(menuClassDataWithRestaurant.description))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container storeAndLocation(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: MediaQuery.of(context).size.width / 1.5,
      child: Card(
        color: Color(0xff6e6d),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {},
                child: Container(
                    height: double.infinity,
                    child: Flex(
                      mainAxisAlignment: MainAxisAlignment.center,
                      direction: Axis.vertical,
                      children: <Widget>[
                        Icon(
                          Icons.store,
                          color: Colors.yellow[600],
                        ),
                        Text("Store"),
                      ],
                    )),
              ),
            ),
            VerticalDivider(),
            Expanded(
              child: InkWell(
                splashColor: Colors.white,
                onTap: () async {
                  final url =
                      'https://www.google.com/maps/search/?api=1&query=-6.883970, 107.582241';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                    height: double.infinity,
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        Text("Location"),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
