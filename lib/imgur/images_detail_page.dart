import 'package:flews/imgur/imgur.dart';
import 'package:flutter/material.dart';

// TODO: need to register the route

class ImagesDetailPage extends StatefulWidget {
  ImagesDetailPage({Key key, this.image}) : super(key: key);

  static const String routeName = "/ImagesDetailPage";

  final ImageItem image;

  @override
  _ImagesDetailPageState createState() => _ImagesDetailPageState();
}

class _ImagesDetailPageState extends State<ImagesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.image.id),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: Image.network('http://i.imgur.com/7unwhF0.jpg',
                    fit: BoxFit.fitWidth))
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  void _onFloatingActionButtonPressed() {}
}
