import 'dart:async';
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:flews/serializers.dart';
import 'package:flews/github/repo.dart';
import 'package:flews/util.dart';
import 'package:flutter/services.dart';

const String baseUrl = 'https://api.github.com/search/';
const String topReposUrl = 'repositories';

Future<List<Repo>> getTopRepos() async {
  final httpClient = createHttpClient();
  String url = Uri.encodeFull('${Url.baseUrl(baseUrl, topReposUrl)}?'
      'sort=stars&order=desc&q=language:java language:kotlin language:dart '
      'created:>${Dates.lastWeek()}');

  final response = await httpClient.get(url);

  Repos repos =
      serializers.deserializeWith(Repos.serializer, JSON.decode(response.body));

  return repos.items.toList(growable: false);
}
