import 'package:feroza/domain/menu/menu_data.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'menu_single_list_item.dart';

class MenuListContainer extends StatefulWidget {
  const MenuListContainer(
      {Key key, @required this.pageKey, @required this.menuClassDataList})
      : super(key: key);
  final String pageKey;
  final List<MenuClassData> menuClassDataList;

  @override
  _MenuListContainerState createState() => _MenuListContainerState();
}

class _MenuListContainerState extends State<MenuListContainer> {
  List<MenuClassData> _filteredList;
  @override
  void initState() {
    _filteredList = widget.menuClassDataList
        .where((element) => element.categoryId == widget.pageKey)
        .toList();
    print(_filteredList.length.toString() + "LENGHT");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (_filteredList.length > 0)
        ? CustomScrollView(
            key: PageStorageKey<String>(widget.pageKey),
            slivers: <Widget>[
              SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return MenuSingleListItem(
                      menuClassData: _filteredList[index]);
                },
                childCount: _filteredList.length,
              ))
            ],
          )
        : SafeArea(
            top: false,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MdiIcons.flaskEmpty,
                    size: 50,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "No Data Found",
                    style: TextStyle(fontSize: 30, color: Colors.grey[300]),
                  )
                ],
              ),
            ),
          );
  }
}
