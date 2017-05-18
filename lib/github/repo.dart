library repo;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repo.g.dart';

abstract class Repo implements Built<Repo, RepoBuilder> {
  int get id;
  String get full_name;
  String get html_url;
  @nullable String get description;
  int get stargazers_count;

  Repo._();
  factory Repo([updates(RepoBuilder b)]) = _$Repo;
  static Serializer<Repo> get serializer => _$repoSerializer;

  domainName() {
    return html_url;
  }

  commentCount() {
    return stargazers_count;
  }
}