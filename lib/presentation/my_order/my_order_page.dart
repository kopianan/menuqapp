import 'package:flutter/material.dart';

class MyOrderPage extends StatefulWidget {
  MyOrderPage({Key key}) : super(key: key);

  @override
  _MyOrderPageState createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text("My Order"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text('Belum dibayar'),
                ),
                Tab(
                  child: Text("Menunggu konfirmasi"),
                ),
                Tab(
                  child: Text("Pesanan diproses"),
                ),
                Tab(
                  child: Text("Pesanan Selesai"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          )),
    );
  }
}
