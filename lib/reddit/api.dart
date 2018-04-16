import 'dart:async';
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:flews/reddit/post.dart';
import 'package:flews/serializers.dart';
import 'package:flews/util.dart';
import 'package:flutter/services.dart';

const String baseUrl = 'https://www.reddit.com/r/AndroidDev/';
const String topPostsUrl = 'top.json?count=25';

Future<List<Post>> getTopPosts() async {
  final httpClient = createHttpClient();
  final response = await httpClient.get(Url.baseUrl(baseUrl, topPostsUrl));

  Posts posts =
      serializers.deserializeWith(Posts.serializer, JSON.decode(response.body));

  return posts.data.children.map((PostData postData) => postData.data).toList();
}
