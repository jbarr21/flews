library post;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post.g.dart';

abstract class Post implements Built<Post, PostBuilder> {
  String get id;
  String get author;
  String get url;
  String get title;
  int get num_comments;
  int get ups;

  Post._();
  factory Post([updates(PostBuilder b)]) = _$Post;
  static Serializer<Post> get serializer => _$postSerializer;

  String username() {
    return '/u/$author';
  }

  domainName() {
    return url;
  }

  commentCount() {
    return ups;
  }
}