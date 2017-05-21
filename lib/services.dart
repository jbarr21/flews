import 'package:flutter/material.dart';

enum Service { HACKER_NEWS, REDDIT, IMGUR, GITHUB }

class Page {
  Page({this.service, this.text, this.icon, this.color});

  final Service service;
  final String text;
  final String icon;
  final Color color;
}

final List<Page> PAGES = <Page>[
  new Page(
      service: Service.HACKER_NEWS,
      text: 'Hacker News',
      icon: 'ycombinator.png',
      color: Colors.deepOrange),
  new Page(
      service: Service.REDDIT,
      text: 'Reddit',
      icon: 'reddit.png',
      color: Colors.blue),
  new Page(
      service: Service.IMGUR,
      text: 'Imgur',
      icon: 'imgur.png',
      color: Colors.green),
  new Page(
      service: Service.GITHUB,
      text: 'GitHub',
      icon: 'github.png',
      color: Colors.blueGrey)
];
