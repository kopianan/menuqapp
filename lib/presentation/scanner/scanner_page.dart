import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_mobile_vision/qr_camera.dart';
import 'package:qr_mobile_vision/qr_mobile_vision.dart';

class ScannerPage extends StatefulWidget {
  static final String TAG = "/scanner/page";
  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  void initState() {
    // Get.back(result: "5f716892aeab2513574a2d1e");
    super.initState();
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: QrCamera(
            qrCodeCallback: (data) {
              if (count == 0) {
                if (data != null) {
                  print("TEST");
                  Get.back(result: data);
                  count++;
                }
              }
            },
            formats: [BarcodeFormats.QR_CODE],
            offscreenBuilder: (context) {
              return Container(color: Colors.green);
            },
          ),
        ),
      ),
    );
  }
}
