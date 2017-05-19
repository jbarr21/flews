// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library serializers
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Post.serializer)
      ..add(PostData.serializer)
      ..add(Posts.serializer)
      ..add(PostsData.serializer)
      ..add(Repo.serializer)
      ..add(Repos.serializer)
      ..add(Story.serializer)
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
