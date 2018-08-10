library story;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'story.g.dart';

abstract class Story implements Built<Story, StoryBuilder> {
  static RegExp domainPrefix = RegExp(r'(.*://)?(www.)?');
  static RegExp domainSuffix = RegExp(r'([/?].*)');

  int get id;
  String get by;
  String get title;
  @nullable
  String get url;
  String get type;
  @nullable
  bool get deleted;
  int get time;
  int get score;
  @nullable
  BuiltList<int> get kids;

  Story._();
  factory Story([updates(StoryBuilder b)]) = _$Story;
  static Serializer<Story> get serializer => _$storySerializer;

  domainName() {
    return url?.replaceAll(domainPrefix, '')?.replaceAll(domainSuffix, '') ??
        '';
  }

  commentCount() {
    return kids?.length ?? 0;
  }
}
