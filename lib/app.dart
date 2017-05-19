import 'package:flews/github/repos.dart';
import 'package:flews/hackernews/stories.dart';
import 'package:flews/reddit/posts.dart';
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
  new _Page(icon: Icons.image, text: 'Imgur', color: Colors.lightGreen),
  new _Page(icon: Icons.code, text: 'GitHub', color: Colors.grey)
];

class FlewsApp extends StatefulWidget {
  @override
  FlewsAppState createState() => new FlewsAppState();
}

class FlewsAppState extends State<FlewsApp>
    with SingleTickerProviderStateMixin {

  TabController _controller;
  _Page _currentTab;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(vsync: this, length: _allPages.length);
    _controller.addListener(() {
      if (!_controller.indexIsChanging) {
        setState(() {
          _currentTab = _allPages[_controller.index];
        });
      }
    });
    _currentTab = _allPages[_controller.index];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = new ThemeData(
        primarySwatch: _currentTab.color,
        primaryColor: _currentTab.color,
        brightness: Brightness.dark);

    return new MaterialApp(
        title: _currentTab.text,
        theme: themeData,
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text(_currentTab.text),
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
                  if (page.color == Colors.blue) {
                    return new PostsPage();
                  } else if (page.color == Colors.grey) {
                    return new ReposPage();
                  } else {
                    return new StoriesPage();
                  }
                }).toList()
            )
        ));
  }
}
