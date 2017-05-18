import 'dart:async';
import 'dart:convert';
import 'package:flews/serializers.dart';
import 'package:flews/github/repo.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

const mockMode = false;

const String baseUrl = 'https://api.github.com/search/';
const String mockBaseUrl = 'https://localhost:8888/';

const String topReposUrl = 'repositories';

const jsonCodec = const JsonCodec();

Future<List<Repo>> getTopRepos() async {
  final httpClient = createHttpClient();
  String baseUrl = _url(topReposUrl);
  String lastWeekDate = _dateLastWeek();
  String url = Uri.encodeFull(
      '$baseUrl?sort=stars&order=desc&q=language:java created:>$lastWeekDate');
  print(url);

  final response = await httpClient.get(url);

  Map topReposResp = jsonCodec.decode(response.body);
  List topRepos = topReposResp['items'];

  final futures = topRepos.take(50).map((repoJson) => getRepo(repoJson));

  return Future.wait(futures);
}

Future<Repo> getRepo(repoJson) async {
  return serializers.deserializeWith(Repo.serializer, repoJson);
}

_dateLastWeek() {
  DateTime now = new DateTime.now();
  DateTime lastWeek = now.add(new Duration(days: -7));
  return new DateFormat("yyyy-MM-dd").format(lastWeek);
}

_url(String url) {
  return '${(mockMode ? '$mockBaseUrl' : '$baseUrl')}$url';
}
