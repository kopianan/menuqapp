import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:feroza/domain/menu/menu_data.dart';

import 'package:image_downloader/image_downloader.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share/share.dart';

class PhotoViewPage extends StatefulWidget {
  static final String TAG = "/photo_view"; 
  @override
  _PhotoViewPageState createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  // MenuBookData menuBookData;
  String image;
  String name;
  @override
  void initState() {
    name = (Get.arguments as List<String>)[0];
    image = (Get.arguments as List<String>)[1];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(name),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: InkWell(
                    onTap: () => onSelection("0"),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("Share"),
                      ],
                    ),
                  ),
                  value: "0",
                ),
                PopupMenuItem(
                  child: InkWell(
                    onTap: () => onSelection("download"),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.cloud_download,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("Download"),
                      ],
                    ),
                  ),
                  value: "1",
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
          child: PhotoView(
              enableRotation: true, imageProvider: NetworkImage(image))),
    );
  }

  void onSelection(String e) async {
    if (e == "0") {
      Share.share(image);
    } else {
      await ImageDownloader.downloadImage(image);
    }
  }
}
