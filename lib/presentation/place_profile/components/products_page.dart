import 'package:feroza/application/restaurant/controller/restaurant_controller.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/presentation/cart/cart_page.dart';
import 'package:feroza/presentation/components/default_button.dart';
import 'package:feroza/presentation/components/default_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GetBuilder<RestaurantController>(
        builder: (restController) => (restController
                    .getDataCurrentRestaurant.menuClassDataList ==
                null)
            ? Container(
                child: Center(
                child: CircularProgressIndicator(),
              ))
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: restController
                          .getDataCurrentRestaurant.menuClassDataList.length,
                      itemBuilder: (context, index) {
                        return Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.only(
                                top: 5, left: 10, right: 10, bottom: 5),
                            child: InkWell(
                              onTap: () {
                                Get.bottomSheet(
                                    CustomDraggableScrollableSheet(
                                      classData: restController
                                          .getDataCurrentRestaurant
                                          .menuClassDataList[index],
                                    ),
                                    ignoreSafeArea: false,
                                    enableDrag: true);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    flex: 4,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          top: 10, bottom: 10, left: 10),
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey[200],
                                                spreadRadius: 2,
                                                blurRadius: 4),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(restController
                                                  .getDataCurrentRestaurant
                                                  .menuClassDataList[index]
                                                  .smallUrl))),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: Container(
                                      width: double.infinity,
                                      margin:
                                          EdgeInsets.only(top: 10, left: 10),
                                      child: Flex(
                                        mainAxisSize: MainAxisSize.max,
                                        direction: Axis.vertical,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              restController
                                                  .getDataCurrentRestaurant
                                                  .menuClassDataList[index]
                                                  .name,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Text(
                                              restController
                                                  .getDataCurrentRestaurant
                                                  .menuClassDataList[index]
                                                  .price,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ));
                      }),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: double.infinity,
                      child: GetX<RestaurantController>(
                        builder: (rest) => DefaultButton(
                            text:
                                "Go To Chart (${rest.getCartList.length.toString()})",
                            press: () {
                              Get.toNamed(CartPage.TAG);
                            }),
                      ))
                ],
              ),
      ),
    );
  }
}

class CustomDraggableScrollableSheet extends StatefulWidget {
  const CustomDraggableScrollableSheet({Key key, @required this.classData});

  final MenuClassData classData;

  @override
  _CustomDraggableScrollableSheetState createState() =>
      _CustomDraggableScrollableSheetState();
}

class _CustomDraggableScrollableSheetState
    extends State<CustomDraggableScrollableSheet> {
  final restaurantController = Get.put(RestaurantController());
  CartData _cartData;
  @override
  void initState() {
    _cartData = restaurantController.checkIfDataExist(widget.classData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        expand: true,
        initialChildSize: 1,
        builder: (_, controller) {
          return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          widget.classData.name,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          widget.classData.price,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.classData.description,
                        ),
                      ),
                      Divider(),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Open PO Until"),
                              Text("12 - January - 2001"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Ready Until"),
                              Text("12 - January - 2001"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            alignment: Alignment.center,
                            child: DefaultOutlineButton(
                              icon: Icon(Icons.remove),
                              press: () {
                                setState(() {
                                  if (_cartData.qty > 0) {
                                    _cartData.qty -= 1;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            child: Text(
                              _cartData.qty.toString(),
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            alignment: Alignment.center,
                            child: DefaultOutlineButton(
                              icon: Icon(Icons.add),
                              press: () {
                                setState(() {
                                  _cartData.qty += 1;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    child: DefaultButton(
                      press: () {
                        restaurantController.addNewDataToChart(_cartData);
                        Get.back();
                      },
                      text: "Add to chart",
                    ),
                  )
                ],
              ));
        });
  }
}
