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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: QrCamera(
            qrCodeCallback: (data) {
              if (data != null) {
                Get.back(closeOverlays: false);
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
