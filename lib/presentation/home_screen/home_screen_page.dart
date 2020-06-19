import 'package:auto_route/auto_route.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:feroza/application/scan/provider/scan_provider.dart';
import 'package:feroza/application/scan/scan_bloc.dart';
import 'package:feroza/infrastructure/functions/flushbarx.dart';
import 'package:feroza/presentation/router/router.gr.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreenPage extends StatefulWidget {
  HomeScreenPage({Key key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  Flushbar flushbar;
  @override
  Widget build(BuildContext context) {
    return Consumer<ScanProvider>(
      builder: (context, scanProvider, _) =>
          BlocConsumer<ScanBloc, ScanState>(listener: (context, state) {
        print("ANAN");
        state.map(
            initial: (e) {},
            loading: (e) {
              showLoadingFlushbar(context, flushbar, "Getting Data . . .");
            },
            successOrFailed: (e) {
              e.successOrFailOptoin.fold(
                  () => {},
                  (a) => a.fold(
                        (l) => showErrorFlushbar(context, flushbar, "Error "),
                        (r) {
                          dismissFlushbar(flushbar);
                          final _res = r..categories.first.isSelected = true;
                          scanProvider.setMenuData(_res);
                          ExtendedNavigator.of(context)
                              .pushReplacementNamed(Routes.dashboardPaged);
                        },
                      ));
            });
      }, builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              "WELCOME",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/images/logo.png"),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text("Scan QR"),
                        // color: Colors.red,
                        onPressed: () async {
                          try {
                            var result = await BarcodeScanner.scan();
                            String _id = result.rawContent.split("/").last;
                            print(_id); 
                            context
                                .bloc<ScanBloc>()
                                .add(ScanEvent(codeQr: _id));
                          } catch (e) {
                            print(e.toString());
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Visit Our Website",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                        onTap: () {
                          launch("https://menuq.co/");
                        },
                        child: Text(
                          "menuq.co",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
