import 'package:flews/ui/resources/strings.dart';
import 'package:flutter/material.dart';

enum Service { HACKER_NEWS, REDDIT, IMGUR, GITHUB }

class Page {
  Page({this.service, this.text, this.icon, this.color});

  final Service service;
  final String text;
  final String icon;
  final Color color;
}

// ignore: non_constant_identifier_names
final List<Page> PAGES = <Page>[
  new Page(
      service: Service.HACKER_NEWS,
      text: Strings.hackerNews,
      icon: 'ycombinator.png',
      color: Colors.deepOrange),
  new Page(
      service: Service.REDDIT,
      text: Strings.reddit,
      icon: 'reddit.png',
      color: Colors.blue),
  new Page(
      service: Service.IMGUR,
      text: Strings.imgur,
      icon: 'imgur.png',
      color: Colors.green),
  new Page(
      service: Service.GITHUB,
      text: Strings.github,
      icon: 'github.png',
      color: Colors.blueGrey)
];
