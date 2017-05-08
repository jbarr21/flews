import 'package:flews/page/story.dart';
import 'package:flews/page/stories.dart';
import 'package:flutter/material.dart';

class FlewsApp extends StatelessWidget {
  static const String title = 'Flews';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: title,
        theme: new ThemeData(
            primarySwatch: Colors.orange, brightness: Brightness.light),
        home: new StoriesPage(title: title),
        routes: <String, WidgetBuilder>{
          StoriesPage.routeName: (BuildContext context) =>
          new StoriesPage(title: title),
          StoryPage.routeName: (BuildContext context) =>
          new StoryPage(title: '$title Detail'),
        });
  }
}
