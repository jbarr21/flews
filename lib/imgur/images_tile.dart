import 'package:flews/imgur/imgur.dart';
import 'package:flutter/material.dart';

class ImageGridTile extends StatelessWidget {
  final ImageItem photo;
  final GestureTapCallback tapCallback;

  ImageGridTile(this.photo, this.tapCallback);

  @override
  Widget build(BuildContext context) {
    String imageId = photo.cover ?? photo.id;
    String imageUrl = 'https://i.imgur.com/${imageId}b.jpg';

    return new GridTile(
        child: new InkWell(
            child: new Image.network(imageUrl, fit: BoxFit.cover),
            onTap: tapCallback
        )
    );
  }
}
