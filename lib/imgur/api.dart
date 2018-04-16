import 'dart:async';
import 'dart:convert';
import 'package:flews/imgur/imgur.dart';
import 'package:flews/serializers.dart';
import 'package:flews/util.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://api.imgur.com/3/';
const String mostViralUrl = 'gallery/hot/viral?showMature=true';
const String clientId = 'cc86a8de0e7c459';

Future<List<ImageItem>> getMostViral() async {
  final response = await http.get(Url.baseUrl(baseUrl, mostViralUrl),
      headers: {'authorization': 'Client-ID $clientId'});

  GalleryItems photos = serializers.deserializeWith(
      GalleryItems.serializer, json.decode(response.body));

  return photos.data.toList();
}
