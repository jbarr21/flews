import 'package:flews/hackernews/story.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class StoryListTile extends StatelessWidget {
  final Story story;
  final GestureTapCallback tapCallback;

  StoryListTile(this.story, this.tapCallback);

  @override
  Widget build(BuildContext context) => InkWell(
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(children: <Widget>[
            Expanded(
                child: Column(children: <Widget>[
              Text('+ ${story.score} • ${story.time}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color)),
              Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(story.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subhead)),
              Text('${story.by} – ${story.domainName()}',
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).textTheme.caption.color))
            ], crossAxisAlignment: CrossAxisAlignment.start)),
            Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Column(children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Icon(Icons.comment,
                          color: Theme.of(context).accentColor)),
                  Text(story.commentCount().toString()),
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
