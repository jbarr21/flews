import 'package:flews/reddit/post.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class PostListTile extends StatelessWidget {
  final Post post;
  final GestureTapCallback tapCallback;

  PostListTile(this.post, this.tapCallback);

  @override
  Widget build(BuildContext context) => new InkWell(
      child: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Row(children: <Widget>[
            new Expanded(
                child: new Column(children: <Widget>[
              new Text(
                  '💬 ${post.commentCount()} • ${post.subreddit} • ${post.created_utc}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color)),
              new Padding(
                  padding: new EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: new Text(post.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subhead)),
              new Text('${post.username()} – ${post.domain}',
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color))
            ], crossAxisAlignment: CrossAxisAlignment.start)),
            new Padding(
                padding: new EdgeInsets.only(left: 16.0),
                child: new Column(children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: new Icon(Icons.arrow_upward,
                          color: Theme.of(context).accentColor)),
                  new Text('${post.ups}'),
                ], mainAxisAlignment: MainAxisAlignment.center)),
          ])),
      onTap: tapCallback);

  onTapTrailing() {
    share('${post.username()} ${post.url}');
  }

//  _onLongPressTrailing(BuildContext context) {
//    ClipboardUtils.copyText(context, post.url);
//  }
}
