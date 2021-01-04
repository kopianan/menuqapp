import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/menu/menu_bloc.dart';
import '../../domain/menu/menu_data.dart';
import '../../injection.dart';
import 'widgets/see_all_book_menu_item_widget.dart';

class SeeAllMenuBookPage extends StatefulWidget {
     static final  String TAG = '/see_all_menu_book';

  SeeAllMenuBookPage({Key key}) : super(key: key);

  @override
  _SeeAllMenuBookPageState createState() => _SeeAllMenuBookPageState();
}

class _SeeAllMenuBookPageState extends State<SeeAllMenuBookPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<MenuBloc>()..add(MenuEvent.getAllMenuBook("10", "1")),
      child: BlocConsumer<MenuBloc, MenuState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            getAllMenuBookOption: (value) {
              print(value.isLoading);
              print(value.allMenuBookData);
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return _seeAllMenuBookLoading();
            },
            getAllMenuBookOption: (value) {
              if (value.isLoading) {
                //tampilkan loading page
                return _seeAllMenuBookLoading();
              } else {
                return value.allMenuBookData.fold(
                    () => _seeAllMenuBookLoading(),
                    (a) => a.fold(
                          (l) => _seeAllMenuBookError(),
                          (r) => _seeAllMenuBookData(r),
                        ));
              }
            },
          );
        },
      ),
    );
  }

  Scaffold _seeAllMenuBookData(List<MenuBookData> testData) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nearby Menu"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: CustomScrollView(
            slivers: [
              SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return SeeAllBookMenuItemWidget(
                    menuBookData: testData[index],
                  );
                }, childCount: testData.length),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1),
              )
            ],
          ),
        ));
  }

  Scaffold _seeAllMenuBookLoading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Scaffold _seeAllMenuBookError() {
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
