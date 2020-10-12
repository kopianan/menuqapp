import 'package:feroza/application/core/controller/location_controller.dart';
import 'package:feroza/application/restaurant/restaurant_bloc.dart';
import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:feroza/domain/restaurant/restaurant_req_res.dart';
import 'package:feroza/presentation/see_all/widgets/see_all_restaurant_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../injection.dart';

class SeeAllPage extends StatefulWidget {
  SeeAllPage({Key key}) : super(key: key);

  @override
  _SeeAllPageState createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
  GetRestaurantListRequest _request;
  LocationController _locationController = Get.put(LocationController());
  List<RestaurantData> data;
  int _page;

  @override
  void initState() {
    _page = 1;
    data = List<RestaurantData>();
    _refreshController = RefreshController(initialRefresh: false);
    _request = GetRestaurantListRequest(
        page: _page,
        paginate: 5,
        latLang: "${_locationController.getCurrentPosition}");
    print(_request.toJson());
    super.initState();
  }

  RefreshController _refreshController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<RestaurantBloc>()
          ..add(RestaurantEvent.getRestaurantList(request: _request)),
        child: BlocConsumer<RestaurantBloc, RestaurantState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              getRestarurantListOption: (value) {
                if (value.isLoading == false) {
                  _refreshController.loadComplete();
                }
                value.restaurantList.fold(
                    () => print("Nothing"),
                    (a) => a.fold(
                          (l) => print("error"),
                          (r) {
                            if (r.data.length != 0) {
                              data.addAll(r.data);
                              _page = _page + 1;
                            } else {
                              _refreshController.loadNoData();
                            }

                            print(_page);
                          },
                        ));
              },
            );
          },
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Nearby Restaurant"),
              ),
              body: SafeArea(
                  child: Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: SmartRefresher(
                  enablePullUp: true,
                  enablePullDown: true,
                  footer: CustomFooter(
                    builder: (BuildContext context, LoadStatus mode) {
                      Widget body;
                      if (mode == LoadStatus.idle) {
                        body = Text("pull up load");
                      } else if (mode == LoadStatus.loading) {
                        body = CupertinoActivityIndicator();
                      } else if (mode == LoadStatus.failed) {
                        body = Text("Load Failed!Click retry!");
                      } else if (mode == LoadStatus.canLoading) {
                        body = Text("release to load more");
                      } else {
                        body = Text("No more Data");
                      }
                      return Container(
                        height: 55.0,
                        child: Center(child: body),
                      );
                    },
                  ),
                  controller: _refreshController,
                  onLoading: () {
                    _request = GetRestaurantListRequest(
                        page: _page,
                        paginate: 5,
                        latLang: "${_locationController.getCurrentPosition}");
                    print("onLoading");
                    context.bloc<RestaurantBloc>().add(
                        RestaurantEvent.getRestaurantList(request: _request));
                  },
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 5),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return SeeAllRestaurantItemWidget(
                            restaurantData: data[index]);
                      }),
                ),
              )),
            );
          },
        ));
  }
}
