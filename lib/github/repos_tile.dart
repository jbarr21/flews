import 'package:flews/github/repo.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class RepoListTile extends StatelessWidget {
  final Repo repo;
  final GestureTapCallback tapCallback;

  RepoListTile(this.repo, this.tapCallback);

  @override
  Widget build(BuildContext context) => new InkWell(
      child: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Row(children: <Widget>[
            new Expanded(
                child: new Column(children: <Widget>[
              new Text('${repo.owner.login} • ${repo.language}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color)),
              new Padding(
                  padding: new EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: new Text(repo.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subhead)),
              new Text('${repo.description ?? ''}',
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color))
            ], crossAxisAlignment: CrossAxisAlignment.start)),
            new Padding(
                padding: new EdgeInsets.only(left: 16.0),
                child: new Column(children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: new Icon(Icons.star,
                          color: Theme.of(context).accentColor)),
                  new Text('${repo.stargazers_count}'),
                ], mainAxisAlignment: MainAxisAlignment.center)),
          ])),
      onTap: tapCallback);

  onTapTrailing() {
    share('${repo.full_name} ${repo.html_url}');
  }

//  _onLongPressTrailing(BuildContext context) {
//    ClipboardUtils.copyText(context, repo.html_url);
//  }
}
