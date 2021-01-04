import 'package:feroza/presentation/see_all/widgets/see_all_food_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../application/menu/menu_bloc.dart';
import '../../domain/menu/menu_data.dart';
import '../../injection.dart';

class SeeAllFoodPage extends StatefulWidget {
  static final  String TAG = '/see_all_food';
  SeeAllFoodPage({Key key}) : super(key: key);

  @override
  _SeeAllFoodPageState createState() => _SeeAllFoodPageState();
}

class _SeeAllFoodPageState extends State<SeeAllFoodPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<MenuBloc>()..add(MenuEvent.getAllMenu("5", "1")),
      child: BlocConsumer<MenuBloc, MenuState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            getAllMenuOption: (value) {
              print(value.isLoading);
              print(value.allMenuOption);
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return _seeAllFoodMenuLoading();
            },
            getAllMenuOption: (value) {
              if (value.isLoading) {
                //tampilkan loading page
                return _seeAllFoodMenuLoading();
              } else {
                return value.allMenuOption.fold(
                    () => _seeAllFoodMenuLoading(),
                    (a) => a.fold(
                          (l) => _seeAllFoodMenuError(),
                          (r) => SeeAllFoodMenuContainer(
                            menuClassDataList: r,
                          ),
                        ));
              }
            },
          );
        },
      ),
    );
  }

  Scaffold _seeAllFoodMenuLoading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Scaffold _seeAllFoodMenuError() {
    return Scaffold(
      body: Center(
        child: Text(
          "Error",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class SeeAllFoodMenuContainer extends StatefulWidget {
  const SeeAllFoodMenuContainer({Key key, @required this.menuClassDataList})
      : super(key: key);
  final List<MenuClassData> menuClassDataList;
  @override
  _SeeAllFoodMenuContainerState createState() =>
      _SeeAllFoodMenuContainerState();
}

class _SeeAllFoodMenuContainerState extends State<SeeAllFoodMenuContainer> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  List<MenuClassData> newDataList;
  int page;

  @override
  void initState() {
    page = 2;
    newDataList = widget.menuClassDataList;
    super.initState();
  }

  void _onLoading(BuildContext context) async {
    context.bloc<MenuBloc>().add(MenuEvent.getAllMenu("5", page.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nearby Food"),
        ),
        body: BlocProvider(
          create: (context) => getIt<MenuBloc>(),
          child: BlocConsumer<MenuBloc, MenuState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                getAllMenuOption: (value) {
                  if (value.isLoading) {
                    if (mounted) setState(() {});
                    _refreshController.requestLoading();
                  } else {
                    value.allMenuOption.fold(
                        () => _refreshController.initialRefresh,
                        (a) => a.fold(
                              (l) => _refreshController.loadFailed(),
                              (r) {
                                if (r.length == 0) {
                                  _refreshController.loadNoData();
                                } else {
                                  newDataList.addAll(r);
                                  setState(() {});
                                  page = page + 1;
                                  _refreshController.loadComplete();
                                }
                              },
                            ));
                  }
                },
              );
            },
            builder: (context, state) {
              return SmartRefresher(
                enablePullUp: true,
                enablePullDown: false,
                controller: _refreshController,
                onLoading: () => _onLoading(context),
                footer: CustomFooter(
                  builder: (BuildContext context, LoadStatus mode) {
                    Widget body;
                    if (mode == LoadStatus.idle) {
                      body = Text("pull up load");
                    } else if (mode == LoadStatus.loading) {
                      body = CircularProgressIndicator();
                    } else if (mode == LoadStatus.failed) {
                      body = Text("Load Failed!Click retry!");
                    } else if (mode == LoadStatus.canLoading) {
                      body = Text("release to load more");
                    } else {
                      body = Text("Abis CUKKK");
                    }
                    return Container(
                      height: 55.0,
                      child: Center(child: body),
                    );
                  },
                ),
                child: CustomScrollView(
                  slivers: [
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return SeeAllFoodItemWidget(
                          menuClassDataWithRestaurant:
                              widget.menuClassDataList[index],
                        );
                      }, childCount: widget.menuClassDataList.length),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1),
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
