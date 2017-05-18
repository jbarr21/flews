import 'package:flews/github/repos.dart';
import 'package:flews/hackernews/stories.dart';
import 'package:flutter/material.dart';

class _Page {
  _Page({ this.icon, this.text, this.color });

  final IconData icon;
  final String text;
  final Color color;
}

final List<_Page> _allPages = <_Page>[
  new _Page(icon: Icons.list, text: 'Hacker News', color: Colors.orange),
  new _Page(icon: Icons.rss_feed, text: 'Reddit', color: Colors.blue),
  new _Page(icon: Icons.image, text: 'Imgur', color: Colors.green),
  new _Page(icon: Icons.code, text: 'GitHub', color: Colors.black)
];

class FlewsApp extends StatefulWidget {
  @override
  FlewsAppState createState() => new FlewsAppState();
}

class FlewsAppState extends State<FlewsApp>
    with SingleTickerProviderStateMixin {
  static const String title = 'Flews';

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(vsync: this, length: _allPages.length);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = new ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange,
        brightness: Brightness.dark);

    return new MaterialApp(
        title: title,
        theme: themeData,
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text(title),
              bottom: new TabBar(
                controller: _controller,
                isScrollable: false,
                indicatorColor: themeData.textTheme.title.color,
                tabs: _allPages.map((_Page page) {
                  return new Tab(icon: new Icon(page.icon));
                }).toList(),
              ),
            ),
            body: new TabBarView(
                controller: _controller,
                children: _allPages.map((_Page page) {
                  if (page.color == Colors.black) {
                    return new ReposPage(title: '$page.text $title');
                  } else {
                    return new StoriesPage(title: '${page.text} $title');
                  }
                }).toList()
            )
        ),
        routes: <String, WidgetBuilder>{
          StoriesPage.routeName: (BuildContext context) =>
              new StoriesPage(title: title),
        });
  }
}
