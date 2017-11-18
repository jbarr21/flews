library repo;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repo.g.dart';

abstract class Repos implements Built<Repos, ReposBuilder> {
  BuiltList<Repo> get items;

  Repos._();
  factory Repos([updates(ReposBuilder b)]) = _$Repos;
  static Serializer<Repos> get serializer => _$reposSerializer;
}

abstract class Repo implements Built<Repo, RepoBuilder> {
  int get id;
  String get name;
  String get full_name;
  RepoOwner get owner;
  String get html_url;
  String get language;
  String get created_at;
  @nullable
  String get description;
  int get stargazers_count;

  Repo._();
  factory Repo([updates(RepoBuilder b)]) = _$Repo;
  static Serializer<Repo> get serializer => _$repoSerializer;
}

abstract class RepoOwner implements Built<RepoOwner, RepoOwnerBuilder> {
  String get login;

  RepoOwner._();
  factory RepoOwner([updates(RepoOwnerBuilder b)]) = _$RepoOwner;
  static Serializer<RepoOwner> get serializer => _$repoOwnerSerializer;
}
