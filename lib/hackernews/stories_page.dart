import 'dart:async';

import 'package:flews/hackernews/stories_repository.dart';
import 'package:flews/hackernews/stories_tile.dart';
import 'package:flews/hackernews/story.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class StoriesPage extends StatefulWidget {
  static const String routeName = "/stories";

  StoriesPage({Key key}) : super(key: key);

  @override
  _StoriesPageState createState() =>
      _StoriesPageState(StoriesRepositoryImpl(Client()));
}

class _StoriesPageState extends State<StoriesPage> {
  StoriesRepository _repository;
  List<Story> _stories = [];

  _StoriesPageState(this._repository);

  @override
  void initState() {
    super.initState();
    loadStories();
  }

  @override
  Widget build(BuildContext context) {
    final storyListTiles = _stories.map((story) {
      return StoryListTile(story, () => UrlLauncher.launchUrl(story.url));
    }).toList();

    return RefreshIndicator(
        child: AnimatedCrossFade(
            firstChild: Center(child: CircularProgressIndicator()),
            secondChild: ListView(children: storyListTiles),
            crossFadeState: _stories.isEmpty
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 200)),
        onRefresh: _onRefresh);
  }

  Future _onRefresh() {
    return Future(loadStories);
  }

  void loadStories() {
    _repository.getTopStories().listen((List<Story> stories) {
      setState(() {
        _stories = stories;
      });
    });
  }
}
