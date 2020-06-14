import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:feroza/application/scan/provider/scan_provider.dart';
import 'package:feroza/presentation/dashboard/widgets/category_card.dart';
import 'package:feroza/presentation/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class DashboardPaged extends StatefulWidget {
  DashboardPaged({Key key}) : super(key: key);

  @override
  _DashboardPagedState createState() => _DashboardPagedState();
}

class _DashboardPagedState extends State<DashboardPaged> {
  int _current = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ScanProvider>(
        builder: (context, scanProvider, _) => Scaffold(
                body: CustomScrollView(slivers: <Widget>[
              SliverAppBar(
                leading: Container(),
                title: Text(scanProvider.getMenuData.restaurantName),
                centerTitle: true,
              ),
              SliverToBoxAdapter(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Category",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 110,
                  child: ListView.builder(
                      itemCount: scanProvider.getMenuData.categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 8),
                          child: CategoryCard(
                              onClick: () {
                                setState(() {
                                  final _rest = scanProvider.getMenuData;
                                  _current = 0;
                                  _rest.categories.forEach((element) {
                                    element.isSelected = false;
                                  });
                                  _rest..categories[index].isSelected = true;
                                  scanProvider.setMenuData(_rest);
                                  scanProvider.setSelectedIndex(index);
                                  carouselController.jumpToPage(0);
                                });
                              },
                              categories:
                                  scanProvider.getMenuData.categories[index]),
                        );
                      }),
                ),
              ),
              SliverToBoxAdapter(
                child: Divider(
                  height: 30,
                ),
              ),
              SliverToBoxAdapter(
                child: (scanProvider.getMenuData == null)
                    ? Container()
                    : Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CarouselSlider(
                            carouselController: carouselController,
                            items: scanProvider.getMenuPhotos
                                .map((item) => InkWell(
                                      onTap: () {
                                        ExtendedNavigator.of(context).pushNamed(
                                            Routes.photoViewPage,
                                            arguments: PhotoViewPageArguments(
                                                menuPhotos: item));
                                      },
                                      child: Container(
                                          child: CachedNetworkImage(
                                        imageUrl: item.mediumUrl,
                                        placeholder: (context, text) => Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                        progressIndicatorBuilder:
                                            (context, url, downloadProgress) =>
                                                Center(
                                          child: CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                        ),
                                        imageBuilder: (context, image) =>
                                            Container(
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: image,
                                                        fit: BoxFit.cover))),
                                      )),
                                    ))
                                .toList(),
                            options: CarouselOptions(
                                viewportFraction: 1.0,
                                aspectRatio: 1,
                                enableInfiniteScroll: false,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: scanProvider.getMenuPhotos.map((url) {
                              int currentIndexDot =
                                  scanProvider.getMenuPhotos.indexOf(url);
                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == currentIndexDot
                                      ? Theme.of(context).accentColor
                                      : Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
              )
            ])));
  }
}
