import 'package:flews/github/repo.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class RepoListTile extends StatelessWidget {
  final Repo repo;
  final GestureTapCallback tapCallback;

  RepoListTile(this.repo, this.tapCallback);

  @override
  Widget build(BuildContext context) => InkWell(
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(children: <Widget>[
            Expanded(
                child: Column(children: <Widget>[
              Text('${repo.owner.login} • ${repo.language}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color)),
              Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(repo.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subhead)),
              Text('${repo.description ?? ''}',
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color))
            ], crossAxisAlignment: CrossAxisAlignment.start)),
            Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Column(children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Icon(Icons.star,
                          color: Theme.of(context).accentColor)),
                  Text('${repo.stargazers_count}'),
                ], mainAxisAlignment: MainAxisAlignment.center)),
          ])),
      onTap: tapCallback);

  onTapTrailing() {
    Share.share('${repo.full_name} ${repo.html_url}');
  }

//  _onLongPressTrailing(BuildContext context) {
//    ClipboardUtils.copyText(context, repo.html_url);
//  }
}
