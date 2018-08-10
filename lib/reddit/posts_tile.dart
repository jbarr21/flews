import 'package:flews/reddit/post.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class PostListTile extends StatelessWidget {
  final Post post;
  final GestureTapCallback tapCallback;

  PostListTile(this.post, this.tapCallback);

  @override
  Widget build(BuildContext context) => InkWell(
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(children: <Widget>[
            Expanded(
                child: Column(children: <Widget>[
              Text(
                  '💬 ${post.commentCount()} • ${post.subreddit} • ${post.created_utc}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color)),
              Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(post.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subhead)),
              Text('${post.username()} – ${post.domain}',
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color))
            ], crossAxisAlignment: CrossAxisAlignment.start)),
            Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Column(children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Icon(Icons.arrow_upward,
                          color: Theme.of(context).accentColor)),
                  Text('${post.ups}'),
                ], mainAxisAlignment: MainAxisAlignment.center)),
          ])),
      onTap: tapCallback);

  onTapTrailing() {
    Share.share('${post.username()} ${post.url}');
  }

//  _onLongPressTrailing(BuildContext context) {
//    ClipboardUtils.copyText(context, post.url);
//  }
}
