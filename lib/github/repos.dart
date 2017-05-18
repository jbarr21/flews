import 'dart:async';
import 'dart:math';
import 'package:flews/github/api.dart';
import 'package:flews/github/repo.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';

class ReposPage extends StatefulWidget {
  ReposPage({Key key, this.title}) : super(key: key);

  static const String routeName = "/repos";

  final String title;

  @override
  _ReposPageState createState() => new _ReposPageState();
}

class _ReposPageState extends State<ReposPage> {
  List<Repo> _repos = [];

  @override
  void initState() {
    super.initState();
    getTopRepos().then((repos) {
      setState(() {
        _repos = repos;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final repoListTiles = _repos.map((repo) {
      return new RepoListTile(repo, () => UrlLauncher.launchUrl(repo.html_url));
    }).toList();

    return new RefreshIndicator(
        child: new ListView(children: repoListTiles),
        onRefresh: _onRefresh
    );
  }

  Future<List<Repo>> _onRefresh() {
    return getTopRepos();
  }
}

class RepoListTile extends StatelessWidget {
  final Repo repo;
  final GestureTapCallback tapCallback;

  final Random random = new Random();

  RepoListTile(this.repo, this.tapCallback);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(repo.full_name, maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle: new Text(repo.description ?? '', maxLines: 2, overflow: TextOverflow.ellipsis),
      trailing: new Column(
        children: [
          new Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              // TODO: get color from theme
              child: new Icon(Icons.star, color: Colors.white)
          ),
          new Text(repo.commentCount().toString()),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      onTap: tapCallback
    );
  }
}
