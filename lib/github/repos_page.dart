import 'dart:async';
import 'package:flews/github/api.dart';
import 'package:flews/github/repo.dart';
import 'package:flews/github/repos_tile.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';

class ReposPage extends StatefulWidget {
  ReposPage({Key key}) : super(key: key);

  static const String routeName = "/repos";

  @override
  _ReposPageState createState() => _ReposPageState();
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
      return RepoListTile(repo, () => UrlLauncher.launchUrl(repo.html_url));
    }).toList();

    return RefreshIndicator(
        child: AnimatedCrossFade(
            firstChild: Center(child: CircularProgressIndicator()),
            secondChild: ListView(children: repoListTiles),
            crossFadeState: _repos.isEmpty
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 200)),
        onRefresh: _onRefresh);
  }

  Future<List<Repo>> _onRefresh() {
    return getTopRepos();
  }
}
