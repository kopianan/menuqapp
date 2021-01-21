import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:feroza/functions/widget_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

class RestaurantInformationPage extends StatefulWidget {
  RestaurantInformationPage(
      {Key key, @required this.getAllRestaurantDataResponse})
      : super(key: key);

  final GetAllRestaurantDataResponse getAllRestaurantDataResponse;
  @override
  _RestaurantInformationPageState createState() =>
      _RestaurantInformationPageState();
}

class _RestaurantInformationPageState extends State<RestaurantInformationPage> {
  GetAllRestaurantDataResponse _restoData;
  @override
  void initState() {
    _restoData = widget.getAllRestaurantDataResponse;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WidgetFunction().appBarWithChartIcon(_restoData.data.name),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: (_restoData.data.logoUrl == null)
                                  ? AssetImage("assets/images/placeholder.jpg")
                                  : NetworkImage(
                                      _restoData.data.logoUrl,
                                    ),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      _restoData.data.name,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      _restoData.data.address,
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ListTile(
                        title: Text("Business Type"),
                        subtitle: Text("On the spot / Pre-Order"),
                        trailing: Text("Pre-Order")),
                    Divider(),
                    ListTile(
                      title: Text(
                          "Nama jala disini kalau bisa sih dua baris, let's check"),
                      trailing: Text(
                        "See on map",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(),
                    ListTile(
                        title: Text("No Hp"),
                        subtitle: Text(_restoData.data.phoneNumber),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                                onTap: () {
                                  Clipboard.setData(ClipboardData(
                                      text: _restoData.data.phoneNumber));
                                  Get.snackbar("Copy to clipboard",
                                      "Nomor berhasil di copy");
                                },
                                child: Icon(Icons.content_copy)),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.call),
                          ],
                        )),
                    Divider(),
                  ])),
        ));
  }
}
