import 'dart:async';
import 'dart:math';
import 'package:flews/reddit/api.dart';
import 'package:flews/reddit/post.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';

class PostsPage extends StatefulWidget {
  PostsPage({Key key}) : super(key: key);

  static const String routeName = "/posts";

  @override
  _PostsPageState createState() => new _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  List<Post> _posts = [];

  @override
  void initState() {
    super.initState();
    getTopPosts().then((posts) {
      setState(() {
        _posts = posts;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final postListTiles = _posts.map((post) {
      return new PostListTile(post, () => UrlLauncher.launchUrl(post.url));
    }).toList();

    return new RefreshIndicator(
        child: new AnimatedCrossFade(
          firstChild: new Center(child: new CircularProgressIndicator()),
          secondChild: new ListView(children: postListTiles),
          crossFadeState: _posts.isEmpty ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: new Duration(milliseconds: 200)),
        onRefresh: _onRefresh
    );
  }

  Future<List<Post>> _onRefresh() {
    return getTopPosts();
  }
}

class PostListTile extends StatelessWidget {
  final Post post;
  final GestureTapCallback tapCallback;

  final Random random = new Random();

  PostListTile(this.post, this.tapCallback);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(post.title, maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle: new Text(post.username()),
      trailing: new Column(
        children: [
          new Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              // TODO: get color from theme
              child: new Icon(Icons.arrow_upward, color: Colors.blue)
          ),
          new Text(post.commentCount().toString()),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      onTap: tapCallback
    );
  }
}
