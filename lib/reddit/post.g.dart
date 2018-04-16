// GENERATED CODE - DO NOT MODIFY BY HAND

part of post;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<Posts> _$postsSerializer = new _$PostsSerializer();
Serializer<PostsData> _$postsDataSerializer = new _$PostsDataSerializer();
Serializer<PostData> _$postDataSerializer = new _$PostDataSerializer();
Serializer<Post> _$postSerializer = new _$PostSerializer();

class _$PostsSerializer implements StructuredSerializer<Posts> {
  @override
  final Iterable<Type> types = const [Posts, _$Posts];
  @override
  final String wireName = 'Posts';

  @override
  Iterable serialize(Serializers serializers, Posts object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(PostsData)),
    ];

    return result;
  }

  @override
  Posts deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new PostsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(PostsData)) as PostsData);
          break;
      }
    }

    return result.build();
  }
}

class _$PostsDataSerializer implements StructuredSerializer<PostsData> {
  @override
  final Iterable<Type> types = const [PostsData, _$PostsData];
  @override
  final String wireName = 'PostsData';

  @override
  Iterable serialize(Serializers serializers, PostsData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'children',
      serializers.serialize(object.children,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PostData)])),
    ];

    return result;
  }

  @override
  PostsData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new PostsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'children':
          result.children.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(PostData)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$PostDataSerializer implements StructuredSerializer<PostData> {
  @override
  final Iterable<Type> types = const [PostData, _$PostData];
  @override
  final String wireName = 'PostData';

  @override
  Iterable serialize(Serializers serializers, PostData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data, specifiedType: const FullType(Post)),
    ];

    return result;
  }

  @override
  PostData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new PostDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(Post)) as Post);
          break;
      }
    }

    return result.build();
  }
}

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable serialize(Serializers serializers, Post object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'domain',
      serializers.serialize(object.domain,
          specifiedType: const FullType(String)),
      'subreddit',
      serializers.serialize(object.subreddit,
          specifiedType: const FullType(String)),
      'created_utc',
      serializers.serialize(object.created_utc,
          specifiedType: const FullType(double)),
      'num_comments',
      serializers.serialize(object.num_comments,
          specifiedType: const FullType(int)),
      'ups',
      serializers.serialize(object.ups, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Post deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new PostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'domain':
          result.domain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subreddit':
          result.subreddit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_utc':
          result.created_utc = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'num_comments':
          result.num_comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ups':
          result.ups = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Posts extends Posts {
  @override
  final PostsData data;

  factory _$Posts([void updates(PostsBuilder b)]) =>
      (new PostsBuilder()..update(updates)).build();

  _$Posts._({this.data}) : super._() {
    if (data == null) throw new BuiltValueNullFieldError('Posts', 'data');
  }

  @override
  Posts rebuild(void updates(PostsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsBuilder toBuilder() => new PostsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Posts) return false;
    return data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Posts')..add('data', data)).toString();
  }
}

class PostsBuilder implements Builder<Posts, PostsBuilder> {
  _$Posts _$v;

  PostsDataBuilder _data;
  PostsDataBuilder get data => _$this._data ??= new PostsDataBuilder();
  set data(PostsDataBuilder data) => _$this._data = data;

  PostsBuilder();

  PostsBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Posts other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Posts;
  }

  @override
  void update(void updates(PostsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Posts build() {
    _$Posts _$result;
    try {
      _$result = _$v ?? new _$Posts._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Posts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PostsData extends PostsData {
  @override
  final BuiltList<PostData> children;

  factory _$PostsData([void updates(PostsDataBuilder b)]) =>
      (new PostsDataBuilder()..update(updates)).build();

  _$PostsData._({this.children}) : super._() {
    if (children == null)
      throw new BuiltValueNullFieldError('PostsData', 'children');
  }

  @override
  PostsData rebuild(void updates(PostsDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsDataBuilder toBuilder() => new PostsDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! PostsData) return false;
    return children == other.children;
  }

  @override
  int get hashCode {
    return $jf($jc(0, children.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsData')..add('children', children))
        .toString();
  }
}

class PostsDataBuilder implements Builder<PostsData, PostsDataBuilder> {
  _$PostsData _$v;

  ListBuilder<PostData> _children;
  ListBuilder<PostData> get children =>
      _$this._children ??= new ListBuilder<PostData>();
  set children(ListBuilder<PostData> children) => _$this._children = children;

  PostsDataBuilder();

  PostsDataBuilder get _$this {
    if (_$v != null) {
      _children = _$v.children?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$PostsData;
  }

  @override
  void update(void updates(PostsDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PostsData build() {
    _$PostsData _$result;
    try {
      _$result = _$v ?? new _$PostsData._(children: children.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'children';
        children.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PostData extends PostData {
  @override
  final Post data;

  factory _$PostData([void updates(PostDataBuilder b)]) =>
      (new PostDataBuilder()..update(updates)).build();

  _$PostData._({this.data}) : super._() {
    if (data == null) throw new BuiltValueNullFieldError('PostData', 'data');
  }

  @override
  PostData rebuild(void updates(PostDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostDataBuilder toBuilder() => new PostDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! PostData) return false;
    return data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostData')..add('data', data))
        .toString();
  }
}

class PostDataBuilder implements Builder<PostData, PostDataBuilder> {
  _$PostData _$v;

  PostBuilder _data;
  PostBuilder get data => _$this._data ??= new PostBuilder();
  set data(PostBuilder data) => _$this._data = data;

  PostDataBuilder();

  PostDataBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$PostData;
  }

  @override
  void update(void updates(PostDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PostData build() {
    _$PostData _$result;
    try {
      _$result = _$v ?? new _$PostData._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Post extends Post {
  @override
  final String id;
  @override
  final String author;
  @override
  final String url;
  @override
  final String title;
  @override
  final String domain;
  @override
  final String subreddit;
  @override
  final double created_utc;
  @override
  final int num_comments;
  @override
  final int ups;

  factory _$Post([void updates(PostBuilder b)]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {this.id,
      this.author,
      this.url,
      this.title,
      this.domain,
      this.subreddit,
      this.created_utc,
      this.num_comments,
      this.ups})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Post', 'id');
    if (author == null) throw new BuiltValueNullFieldError('Post', 'author');
    if (url == null) throw new BuiltValueNullFieldError('Post', 'url');
    if (title == null) throw new BuiltValueNullFieldError('Post', 'title');
    if (domain == null) throw new BuiltValueNullFieldError('Post', 'domain');
    if (subreddit == null)
      throw new BuiltValueNullFieldError('Post', 'subreddit');
    if (created_utc == null)
      throw new BuiltValueNullFieldError('Post', 'created_utc');
    if (num_comments == null)
      throw new BuiltValueNullFieldError('Post', 'num_comments');
    if (ups == null) throw new BuiltValueNullFieldError('Post', 'ups');
  }

  @override
  Post rebuild(void updates(PostBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Post) return false;
    return id == other.id &&
        author == other.author &&
        url == other.url &&
        title == other.title &&
        domain == other.domain &&
        subreddit == other.subreddit &&
        created_utc == other.created_utc &&
        num_comments == other.num_comments &&
        ups == other.ups;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), author.hashCode),
                                url.hashCode),
                            title.hashCode),
                        domain.hashCode),
                    subreddit.hashCode),
                created_utc.hashCode),
            num_comments.hashCode),
        ups.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('id', id)
          ..add('author', author)
          ..add('url', url)
          ..add('title', title)
          ..add('domain', domain)
          ..add('subreddit', subreddit)
          ..add('created_utc', created_utc)
          ..add('num_comments', num_comments)
          ..add('ups', ups))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _domain;
  String get domain => _$this._domain;
  set domain(String domain) => _$this._domain = domain;

  String _subreddit;
  String get subreddit => _$this._subreddit;
  set subreddit(String subreddit) => _$this._subreddit = subreddit;

  double _created_utc;
  double get created_utc => _$this._created_utc;
  set created_utc(double created_utc) => _$this._created_utc = created_utc;

  int _num_comments;
  int get num_comments => _$this._num_comments;
  set num_comments(int num_comments) => _$this._num_comments = num_comments;

  int _ups;
  int get ups => _$this._ups;
  set ups(int ups) => _$this._ups = ups;

  PostBuilder();

  PostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _author = _$v.author;
      _url = _$v.url;
      _title = _$v.title;
      _domain = _$v.domain;
      _subreddit = _$v.subreddit;
      _created_utc = _$v.created_utc;
      _num_comments = _$v.num_comments;
      _ups = _$v.ups;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Post;
  }

  @override
  void update(void updates(PostBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    final _$result = _$v ??
        new _$Post._(
            id: id,
            author: author,
            url: url,
            title: title,
            domain: domain,
            subreddit: subreddit,
            created_utc: created_utc,
            num_comments: num_comments,
            ups: ups);
    replace(_$result);
    return _$result;
  }
}
