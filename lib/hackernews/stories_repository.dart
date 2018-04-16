import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flews/hackernews/story.dart';
import 'package:flews/serializers.dart';
import 'package:flews/util.dart';
import 'package:http/http.dart';
import 'package:rxdart/rxdart.dart';

const FullType listOfInts = const FullType(BuiltList, const [const FullType(int)]);

abstract class StoriesRepository {
  Observable<List<Story>> getTopStories();
  Observable<Story> getStory(int id);
}

class StoriesRepositoryImpl extends StoriesRepository {

  static const String baseUrl = 'https://hacker-news.firebaseio.com/v0/';
  static const String topStoriesUrl = 'topstories.json';
  static const String storyDetailsUrl = 'item';
  final Client client;

  StoriesRepositoryImpl(this.client);

  @override
  Observable<List<Story>> getTopStories() {
    String url = Url.baseUrl(baseUrl, topStoriesUrl);
    return new Observable.fromFuture(client.get(url))
        .where((Response response) => response != null)
        .map((Response response) => json.decode(response.body))
        .flatMap((dynamic body) {
          BuiltList<int> topStoryIds = serializers.deserialize(body,
              specifiedType: listOfInts);
          return new Observable.fromIterable(topStoryIds);
        })
        .take(50)
        .flatMap((int storyId) => getStory(storyId))
        .toList()
        .asObservable();
  }

  @override
  Observable<Story> getStory(int id) {
    String url = Url.baseUrl(baseUrl, 'item/$id.json');
    return new Observable.fromFuture(client.get(url))
        .where((Response response) => response != null)
        .map((Response response) => json.decode(response.body))
        .map((dynamic body) => serializers.deserializeWith(Story.serializer, body));
  }
}
