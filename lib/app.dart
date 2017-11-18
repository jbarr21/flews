import 'package:flews/github/repos_page.dart';
import 'package:flews/hackernews/stories_page.dart';
import 'package:flews/imgur/images_page.dart';
import 'package:flews/reddit/posts_page.dart';
import 'package:flews/services.dart';
import 'package:flutter/material.dart';

class FlewsApp extends StatefulWidget {
  @override
  FlewsAppState createState() => new FlewsAppState();
}

class FlewsAppState extends State<FlewsApp>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  Page _currentTab;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(vsync: this, length: PAGES.length);
    _controller.addListener(() {
      setState(() {
        _currentTab = PAGES[_controller.index];
      });
    });
    _currentTab = PAGES[_controller.index];
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
        accentColor: _currentTab.color,
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
                tabs: PAGES.map((Page page) {
                  return new Tab(
                      icon: new ImageIcon(
                          new AssetImage('images/icons/${page.icon}')));
                }).toList(),
              ),
            ),
            body: new TabBarView(
                controller: _controller,
                children: PAGES.map((Page page) {
                  switch (page.service) {
                    case Service.HACKER_NEWS:
                      return new StoriesPage();
                      break;
                    case Service.REDDIT:
                      return new PostsPage();
                      break;
                    case Service.IMGUR:
                      return new ImagesPage();
                      break;
                    case Service.GITHUB:
                      return new ReposPage();
                      break;
                  }
                }).toList())));
  }
}
