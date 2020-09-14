import 'package:feroza/presentation/see_all/widgets/see_all_food_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/menu/menu_bloc.dart';
import '../../domain/menu/menu_data.dart';
import '../../injection.dart';

class SeeAllFoodPage extends StatefulWidget {
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
                          (r) => _seeAllFoodMenuContainer(r),
                        ));
              }
            },
          );
        },
      ),
    );
  }

  Scaffold _seeAllFoodMenuContainer(
      List<MenuClassDataWithRestaurant> testData) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nearby Food"),
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return SeeAllFoodItemWidget(
                  menuClassDataWithRestaurant: testData[index],
                );
              }, childCount: testData.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1),
            )
          ],
        ));
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
