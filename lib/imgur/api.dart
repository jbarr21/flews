import 'dart:async';
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flews/imgur/imgur.dart';
import 'package:flews/serializers.dart';
import 'package:flews/util.dart';
import 'package:flutter/services.dart';

const String baseUrl = 'https://api.imgur.com/3/';
const String mostViralUrl = 'gallery/hot/viral?showMature=true';
const String clientId = 'cc86a8de0e7c459';

Future<List<ImageItem>> getMostViral() async {
  final httpClient = createHttpClient();
  final response = await httpClient.get(Url.baseUrl(baseUrl, mostViralUrl),
      headers: {'authorization': 'Client-ID $clientId'});

  GalleryItems photos = serializers.deserializeWith(
      GalleryItems.serializer, JSON.decode(response.body));

  return photos.data.toList();
}
