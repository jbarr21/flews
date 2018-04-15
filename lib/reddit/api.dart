import 'dart:async';
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:flews/reddit/post.dart';
import 'package:flews/serializers.dart';
import 'package:flews/util.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://www.reddit.com/r/AndroidDev/';
const String topPostsUrl = 'top.json?count=25';

Future<List<Post>> getTopPosts() async {
  final response = await http.get(Url.baseUrl(baseUrl, topPostsUrl));

  Posts posts =
      serializers.deserializeWith(Posts.serializer, JSON.decode(response.body));

  return posts.data.children.map((PostData postData) => postData.data).toList();
}
