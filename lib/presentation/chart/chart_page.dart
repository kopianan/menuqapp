import 'package:feroza/application/chart/chart_controller.dart';
import 'package:feroza/application/restaurant/restaurant_bloc.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:feroza/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ChartPage extends StatefulWidget {
  static final String TAG = "/chart_page";
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  final chartController = Get.put(ChartController());
  TextStyle tableHeader = TextStyle(fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return (chartController.chartDataModel.isEmpty)
        ? ScaffoldWithNoData()
        : BlocProvider(
            create: (context) => getIt<RestaurantBloc>()
              ..add(RestaurantEvent.getCompleteRestaurantData(
                  restaurantId:
                      chartController.chartDataModel.first.restaurantId)),
            child: BlocBuilder<RestaurantBloc, RestaurantState>(
                builder: (context, state) {
              return state.maybeMap(
                orElse: () => ScaffoldWithNoData(),
                completeRestaurantDataOption: (e) {
                  if (e.isLoading) {
                    return Scaffold(
                      body: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else {
                    return e.restaurantList.fold(
                        () => Scaffold(
                              body: Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                        (a) => a.fold(
                              (l) => ScaffoldWithNoData(),
                              (r) => ScaffoldContainData(
                                chartController: chartController,
                                restaurant: r,
                              ),
                            ));
                  }
                },
              );
            }));
  }
}

class ScaffoldWithNoData extends StatelessWidget {
  const ScaffoldWithNoData({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.emoji_food_beverage, size: 100, color: Colors.grey[300]),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Mohon maaf, tapi anda beli menambakan daftar makanan apapaun.Silahkan kembali dan coba tambah item yang akan anda tanyakan",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[300]),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: OutlineButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(color: Colors.grey[300]),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class ScaffoldContainData extends StatelessWidget {
  const ScaffoldContainData(
      {Key key, @required this.chartController, @required this.restaurant})
      : super(key: key);
  final GetAllRestaurantDataResponse restaurant;
  final ChartController chartController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chart"),
        actions: [
          InkWell(
              onTap: () {
                Get.dialog(AlertDialog(
                  title: Text("Hapus List Belanja ? "),
                  actions: [
                    TextButton(
                      onPressed: () {
                        chartController.clearChart();
                        Get.back(closeOverlays: true);
                      },
                      child: Text(
                        "Hapus",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Tidak",
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                    )
                  ],
                ));
              },
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Clear",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )))
        ],
      ),
      body: GetBuilder<ChartController>(
          builder: (_chart) => Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                              // child: Text("ANAN"),
                              child: (_chart.chartDataModel.isEmpty)
                                  ? Text(
                                      "No Data",
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          restaurant.data.name,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    )),
                          SliverToBoxAdapter(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: _chart.chartDataModel.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        leading: Container(
                                            height: 100,
                                            child: Image.network(
                                              _chart.chartDataModel[index]
                                                  .menuData.smallUrl,
                                              fit: BoxFit.cover,
                                            )),
                                        title: Text(_chart.chartDataModel[index]
                                            .menuData.name),
                                        trailing: IconButton(
                                            icon: Icon(
                                              Icons.remove_circle,
                                              color: Colors.red,
                                            ),
                                            onPressed: () {
                                              if (_chart.removeItemFromChart(
                                                  _chart
                                                      .chartDataModel[index])) {
                                                Get.back();
                                              }
                                            }),
                                      ),
                                      Divider()
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: () async {
                          await launch(
                              "https://wa.me/6281377151395?text=Hello");
                        },
                        child: Text(
                          "Hubungi Penjual",
                          style: TextStyle(color: Colors.black45),
                        ),
                        color: Colors.yellowAccent[400]),
                  )
                ],
              )),
    );
  }
}
