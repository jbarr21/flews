import 'dart:async';
import 'dart:math';
import 'package:flews/imgur/api.dart';
import 'package:flews/imgur/imgur.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  ImagesPage({Key key}) : super(key: key);

  static const String routeName = "/images";

  @override
  _ImagesPageState createState() => new _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  List<ImageItem> _images = [];

  @override
  void initState() {
    super.initState();
    getMostViral().then((images) {
      setState(() {
        _images = images;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final imageGridTiles = _images.map((ImageItem photo) {
      return new ImageGridTile(photo, () => UrlLauncher.launchUrl(photo.link));
    }).toList();

    final Orientation orientation = MediaQuery.of(context).orientation;
    GridView gridView = new GridView.count(
      children: imageGridTiles,
      crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      padding: const EdgeInsets.all(4.0),
      childAspectRatio: 1.0,
    );

    return new RefreshIndicator(
        child: new AnimatedCrossFade(
            firstChild: new Center(child: new CircularProgressIndicator()),
            secondChild: new Column(children: <Widget>[new Expanded(child: gridView)]),
            crossFadeState: _images.isEmpty ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: new Duration(milliseconds: 200)),
        onRefresh: _onRefresh
    );
  }

  Future<List<ImageItem>> _onRefresh() {
    return getMostViral();
  }
}

class ImageGridTile extends StatelessWidget {
  final ImageItem photo;
  final GestureTapCallback tapCallback;

  final Random random = new Random();

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
