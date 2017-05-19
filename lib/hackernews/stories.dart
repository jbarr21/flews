import 'dart:async';
import 'dart:math';
import 'package:flews/hackernews/api.dart';
import 'package:flews/hackernews/story.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';

class StoriesPage extends StatefulWidget {
  StoriesPage({Key key}) : super(key: key);

  static const String routeName = "/stories";

  @override
  _StoriesPageState createState() => new _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  List<Story> _stories = [];

  @override
  void initState() {
    super.initState();
    getTopStories().then((stories) {
      setState(() {
        _stories = stories;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final storyListTiles = _stories.map((story) {
      return new StoryListTile(story, () => UrlLauncher.launchUrl(story.url));
    }).toList();

    return new RefreshIndicator(
        child: new ListView(children: storyListTiles),
        onRefresh: _onRefresh
    );
  }

  Future<List<Story>> _onRefresh() {
    return getTopStories();
  }
}

class StoryListTile extends StatelessWidget {
  final Story story;
  final GestureTapCallback tapCallback;

  final Random random = new Random();

  StoryListTile(this.story, this.tapCallback);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(story.title, maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle: new Text(story.domainName()),
      trailing: new Column(
        children: [
          new Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              // TODO: get color from theme
              child: new Icon(Icons.comment, color: Colors.orange)
          ),
          new Text(story.commentCount().toString()),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      onTap: tapCallback
    );
  }
}
