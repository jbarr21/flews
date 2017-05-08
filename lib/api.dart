import 'dart:async';
import 'dart:convert';
import 'package:flews/model/serializers.dart';
import 'package:flews/model/story.dart';
import 'package:flutter/services.dart';

const mockMode = false;

const String baseUrl = 'https://hacker-news.firebaseio.com/v0/';
const String mockBaseUrl = 'https://localhost:8888/';

const String topStoriesUrl = 'topstories.json';
const String storyDetailsUrl = 'item';

const jsonCodec = const JsonCodec();

Future<List<Story>> getTopStories() async {
  final httpClient = createHttpClient();
  final response = await httpClient.get(_url(topStoriesUrl));

  List<int> topStories = jsonCodec.decode(response.body);

  final futures = topStories.take(50).map((storyId) => getStory(storyId));

  return Future.wait(futures);
}

Future<Story> getStory(int id) async {
  final httpClient = createHttpClient();
  final response = await httpClient.get(_url('item/${id}.json'));
  return serializers.deserializeWith(Story.serializer, JSON.decode(response.body));
}

_url(String url) {
  return '${(mockMode ? '$mockBaseUrl' : '$baseUrl')}$url';
}
