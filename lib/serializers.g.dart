// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GalleryItems.serializer)
      ..add(ImageItem.serializer)
      ..add(Post.serializer)
      ..add(PostData.serializer)
      ..add(Posts.serializer)
      ..add(PostsData.serializer)
      ..add(Repo.serializer)
      ..add(RepoOwner.serializer)
      ..add(Repos.serializer)
      ..add(Story.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ImageItem)]),
          () => new ListBuilder<ImageItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PostData)]),
          () => new ListBuilder<PostData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Repo)]),
          () => new ListBuilder<Repo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>()))
    .build();
