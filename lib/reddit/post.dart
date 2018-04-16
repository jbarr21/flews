library post;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post.g.dart';

abstract class Posts implements Built<Posts, PostsBuilder> {
  PostsData get data;

  Posts._();
  factory Posts([updates(PostsBuilder b)]) = _$Posts;
  static Serializer<Posts> get serializer => _$postsSerializer;
}

abstract class PostsData implements Built<PostsData, PostsDataBuilder> {
  BuiltList<PostData> get children;

  PostsData._();
  factory PostsData([updates(PostsDataBuilder b)]) = _$PostsData;
  static Serializer<PostsData> get serializer => _$postsDataSerializer;
}

abstract class PostData implements Built<PostData, PostDataBuilder> {
  Post get data;

  PostData._();
  factory PostData([updates(PostDataBuilder b)]) = _$PostData;
  static Serializer<PostData> get serializer => _$postDataSerializer;
}

abstract class Post implements Built<Post, PostBuilder> {
  String get id;
  String get author;
  String get url;
  String get title;
  String get domain;
  String get subreddit;
  double get created_utc; // ignore: non_constant_identifier_names
  int get num_comments; // ignore: non_constant_identifier_names
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
