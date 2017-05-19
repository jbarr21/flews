import 'dart:async';
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flews/serializers.dart';
import 'package:flews/hackernews/story.dart';
import 'package:flews/util.dart';
import 'package:flutter/services.dart';

const String baseUrl = 'https://hacker-news.firebaseio.com/v0/';
const String topStoriesUrl = 'topstories.json';
const String storyDetailsUrl = 'item';

const FullType listOfInts = const FullType(BuiltList, const [const FullType(int)]);

Future<List<Story>> getTopStories() async {
  final httpClient = createHttpClient();
  final response = await httpClient.get(Url.baseUrl(baseUrl, topStoriesUrl));

  BuiltList<int> topStories = serializers.deserialize(
      JSON.decode(response.body), specifiedType: listOfInts);

  final futures = topStories.take(50).map((storyId) => getStory(storyId));

  return Future.wait(futures);
}

Future<Story> getStory(int id) async {
  final httpClient = createHttpClient();
  final response = await httpClient.get(Url.baseUrl(baseUrl, 'item/${id}.json'));
  return serializers.deserializeWith(Story.serializer, JSON.decode(response.body));
}
