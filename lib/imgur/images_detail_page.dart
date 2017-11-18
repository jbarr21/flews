import 'package:flews/imgur/imgur.dart';
import 'package:flutter/material.dart';

// TODO: need to register the route

class ImagesDetailPage extends StatefulWidget {
  ImagesDetailPage({Key key, this.image}) : super(key: key);

  static const String routeName = "/ImagesDetailPage";

  final ImageItem image;

  @override
  _ImagesDetailPageState createState() => new _ImagesDetailPageState();
}

class _ImagesDetailPageState extends State<ImagesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.image.id),
      ),
      body: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
                child: new Image.network('http://i.imgur.com/7unwhF0.jpg',
                    fit: BoxFit.fitWidth))
          ]),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        tooltip: 'Add',
        child: new Icon(Icons.add),
      ),
    );
  }

  void _onFloatingActionButtonPressed() {}
}
