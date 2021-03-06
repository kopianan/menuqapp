import 'package:feroza/application/restaurant/controller/restaurant_controller.dart';
import 'package:feroza/presentation/components/default_button.dart';
import 'package:feroza/util/menuq_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CartPage extends StatefulWidget {
  static final String TAG = '/cart_page';
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double getSubtotalEachItem(CartData data) {
    double subTotal = double.parse(data.menuList.price) * data.qty;
    return subTotal;
  }

  double getAllItemSubTotal(List<CartData> listData) {
    double _subTotal = 0;
    listData.forEach((element) {
      _subTotal += double.parse(element.menuList.price) * element.qty;
    });
    return _subTotal;
  }

  double downPayment(double subTotal) {
    return subTotal * 0.3;
  }

  double getTax() {
    return 0;
  }

  double getTotal(double subTotal, double downPayment) {
    return subTotal + downPayment;
  }

  @override
  Widget build(BuildContext context) {
    const totalTextStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.w400);
    return Scaffold(
      body: GetX<RestaurantController>(
          builder: (data) => CustomScrollView(slivers: [
                SliverAppBar(
                  title: Text("Order Info"),
                ),
                SliverToBoxAdapter(
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            title: Text(
                              "Gelora's Restaurant",
                            ),
                            isThreeLine: false,
                            subtitle: Text("Alamat restaurant"),
                          ),
                          restaurantInfroDetail(
                              "Open PO", "Kamis, 12 februari"),
                          SizedBox(height: 5),
                          restaurantInfroDetail(
                              "Colose PO", "Kamis, 12 februari")
                        ],
                      )),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: Colors.grey[50],
                    child: ListView.builder(
                      itemCount: data.getCartList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return cartItemList(data, index);
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      restaurantInfroDetail("Sub Total",
                          getAllItemSubTotal(data.cartData).toString()),
                      restaurantInfroDetail(
                          "DP 30%",
                          downPayment(getAllItemSubTotal(data.cartData))
                              .toString()),
                      Divider(thickness: 2),
                      restaurantInfroDetail(
                          "Total",
                          getTotal(getAllItemSubTotal(data.cartData), getTax())
                              .toString()),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: double.infinity,
                        child: DefaultButton(
                          press: () {},
                          text: "Checkout",
                        ),
                      )
                    ],
                  ),
                ))
              ])),
    );
  }

  Padding cartItemList(RestaurantController data, int index) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            height: 90,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                data.getCartList[index].menuList.mediumUrl),
                            fit: BoxFit.cover),
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data.getCartList[index].menuList.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            data.getCartList[index].menuList.price,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            getSubtotalEachItem(data.getCartList[index])
                                .toString(),
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: kAccentColor, width: 2)),
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: IconButton(
                                  iconSize: 17,
                                  splashRadius: 17,
                                  padding: EdgeInsets.zero,
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  color: kAccentColor,
                                  onPressed: () {
                                    data.decreaseDataFromCart(
                                        data.getCartList[index]);
                                  },
                                )),
                                VerticalDivider(
                                  width: 0,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Obx(() => Text(
                                          data.getCartList[index].qty
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                                VerticalDivider(
                                  width: 0,
                                ),
                                Expanded(
                                    child: IconButton(
                                  iconSize: 17,
                                  splashRadius: 17,
                                  padding: EdgeInsets.zero,
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  color: kAccentColor,
                                  onPressed: () {
                                    data.addNewDataToChart(
                                        data.getCartList[index]);
                                  },
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }

  Container restaurantInfroDetail(String key, String value) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          key,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 15),
        ),
      ],
    ));
  }
}
