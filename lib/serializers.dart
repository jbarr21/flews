library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flews/imgur/imgur.dart';
import 'package:flews/github/repo.dart';
import 'package:flews/hackernews/story.dart';
import 'package:flews/reddit/post.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Story,        // HN
  Posts,        // Reddit
  GalleryItems, // Imgur
  Repos         // GH
])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(new StandardJsonPlugin())
).build();
