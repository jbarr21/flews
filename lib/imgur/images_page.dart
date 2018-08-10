import 'dart:async';
import 'package:flews/imgur/api.dart';
import 'package:flews/imgur/images_tile.dart';
import 'package:flews/imgur/imgur.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  ImagesPage({Key key}) : super(key: key);

  static const String routeName = "/images";

  @override
  _ImagesPageState createState() => _ImagesPageState();
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
      return ImageGridTile(
          photo,
          //() => Navigator.of(context).pushNamed(ImagesDetailPage.routeName)
          () => UrlLauncher.launchUrl(photo.link));
    }).toList();

    final Orientation orientation = MediaQuery.of(context).orientation;
    GridView gridView = GridView.count(
      children: imageGridTiles,
      crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      padding: const EdgeInsets.all(4.0),
      childAspectRatio: 1.0,
    );

    return RefreshIndicator(
        child: AnimatedCrossFade(
            firstChild: Center(child: CircularProgressIndicator()),
            secondChild:
                Column(children: <Widget>[Expanded(child: gridView)]),
            crossFadeState: _images.isEmpty
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 200)),
        onRefresh: _onRefresh);
  }

  Future<List<ImageItem>> _onRefresh() {
    return getMostViral();
  }
}
