import 'dart:async';
import 'dart:convert';
import 'package:flews/reddit/post.dart';
import 'package:flews/serializers.dart';
import 'package:flutter/services.dart';

const mockMode = false;

const String baseUrl = 'https://www.reddit.com/r/AndroidDev/';
const String mockBaseUrl = 'https://localhost:8888/';

const String topPostsUrl = 'top.json?count=25';

const jsonCodec = const JsonCodec();

Future<List<Post>> getTopPosts() async {
  final httpClient = createHttpClient();
  final response = await httpClient.get(_url(topPostsUrl));

  Map resp = jsonCodec.decode(response.body);
  List topPosts = resp['data']['children'];

  final futures = topPosts.take(25).map((postJson) => getPost(postJson));

  return Future.wait(futures);
}

Future<Post> getPost(postJson) async {
  return serializers.deserializeWith(Post.serializer, postJson['data']);
}

_url(String url) {
  return '${(mockMode ? '$mockBaseUrl' : '$baseUrl')}$url';
}
