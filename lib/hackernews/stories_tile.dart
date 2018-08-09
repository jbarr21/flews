import 'package:flews/hackernews/story.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class StoryListTile extends StatelessWidget {
  final Story story;
  final GestureTapCallback tapCallback;

  StoryListTile(this.story, this.tapCallback);

  @override
  Widget build(BuildContext context) => new InkWell(
      child: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Row(children: <Widget>[
            new Expanded(
                child: new Column(children: <Widget>[
              new Text('+ ${story.score} • ${story.time}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color)),
              new Padding(
                  padding: new EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: new Text(story.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subhead)),
              new Text('${story.by} – ${story.domainName()}',
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color))
            ], crossAxisAlignment: CrossAxisAlignment.start)),
            new Padding(
                padding: new EdgeInsets.only(left: 16.0),
                child: new Column(children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: new Icon(Icons.comment,
                          color: Theme.of(context).accentColor)),
                  new Text(story.commentCount().toString()),
                ], mainAxisAlignment: MainAxisAlignment.center)),
          ])),
      onTap: tapCallback);

  onTapTrailing() {
    Share.share('${story.title} ${story.url}');
  }

//  _onLongPressTrailing(BuildContext context) {
//    ClipboardUtils.copyText(context, story.url);
//  }
}
