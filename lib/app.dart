import 'package:flews/github/repos_page.dart';
import 'package:flews/hackernews/stories_page.dart';
import 'package:flews/imgur/images_page.dart';
import 'package:flews/reddit/posts_page.dart';
import 'package:flews/services.dart';
import 'package:flutter/material.dart';

class FlewsApp extends StatefulWidget {
  @override
  FlewsAppState createState() => FlewsAppState();
}

class FlewsAppState extends State<FlewsApp>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  Page _currentTab;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: PAGES.length);
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
    ThemeData themeData = ThemeData(
        primarySwatch: _currentTab.color,
        primaryColor: _currentTab.color,
        accentColor: _currentTab.color,
        brightness: Brightness.dark);

    return MaterialApp(
        title: _currentTab.text,
        theme: themeData,
        home: Scaffold(
            appBar: AppBar(
              title: Text(_currentTab.text),
              bottom: TabBar(
                controller: _controller,
                isScrollable: false,
                indicatorColor: themeData.textTheme.title.color,
                tabs: PAGES.map((Page page) {
                  return Tab(
                      icon: ImageIcon(AssetImage('images/icons/${page.icon}')));
                }).toList(),
              ),
            ),
            body: TabBarView(
                controller: _controller,
                children: PAGES.map((Page page) {
                  switch (page.service) {
                    case Service.HACKER_NEWS:
                      return StoriesPage();
                      break;
                    case Service.REDDIT:
                      return PostsPage();
                      break;
                    case Service.IMGUR:
                      return ImagesPage();
                      break;
                    case Service.GITHUB:
                      return ReposPage();
                      break;
                  }
                }).toList())));
  }
}
