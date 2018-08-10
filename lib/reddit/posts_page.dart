import 'dart:async';
import 'package:flews/reddit/api.dart';
import 'package:flews/reddit/post.dart';
import 'package:flews/reddit/posts_tile.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';

class PostsPage extends StatefulWidget {
  PostsPage({Key key}) : super(key: key);

  static const String routeName = "/posts";

  @override
  _PostsPageState createState() => _PostsPageState();
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
      return PostListTile(post, () => UrlLauncher.launchUrl(post.url));
    }).toList();

    return RefreshIndicator(
        child: AnimatedCrossFade(
            firstChild: Center(child: CircularProgressIndicator()),
            secondChild: ListView(children: postListTiles),
            crossFadeState: _posts.isEmpty
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 200)),
        onRefresh: _onRefresh);
  }

  Future<List<Post>> _onRefresh() {
    return getTopPosts();
  }
}
