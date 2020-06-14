import 'package:feroza/domain/scan/menu.dart';
import 'package:flutter/material.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share/share.dart';

class PhotoViewPage extends StatefulWidget {
  PhotoViewPage({this.menuPhotos});

  final MenuPhotos menuPhotos;

  @override
  _PhotoViewPageState createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          widget.menuPhotos.name,
        ),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: onSelection,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.share),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Share"),
                    ],
                  ),
                  value: "0",
                ),
                PopupMenuItem(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.cloud_download),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Download"),
                    ],
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
        enableRotation: true,
        imageProvider: NetworkImage(widget.menuPhotos.largeUrl),
      )),
    );
  }

  void onSelection(String e) async {
    if (e == "0") {
      Share.share(widget.menuPhotos.largeUrl);
    } else {
      await ImageDownloader.downloadImage(widget.menuPhotos.largeUrl);
    }
  }
}
