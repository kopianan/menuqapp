import 'package:feroza/application/menu/menu_bloc.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/injection.dart';
import 'package:feroza/presentation/item_detail/widgets/menu_item_detail_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';

import 'widgets/item_detail_loading_page.dart';

class ItemDetail extends StatefulWidget {
  ItemDetail({Key key}) : super(key: key);

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  String menuId;
  @override
  void initState() {
    menuId = Get.arguments as String;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<MenuBloc>()..add(MenuEvent.getSingleMenu(menuId)),
      child: BlocConsumer<MenuBloc, MenuState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => ItemDetailLoadingPage(),
            singleMenuWithRestaurantData: (value) {
              return value.singleMenuOption.fold(
                  () => ItemDetailLoadingPage(),
                  (a) => a.fold(
                      (l) => ItemDetailLoadingPage(),
                      (r) => MenuItemDetailContentWidget(
                            menuClassDataWithRestaurant: r.data,
                          )));
            },
          );
        },
      ),
    );
  }
}
