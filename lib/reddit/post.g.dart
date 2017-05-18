// GENERATED CODE - DO NOT MODIFY BY HAND

part of post;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library post
// **************************************************************************

Serializer<Post> _$postSerializer = new _$PostSerializer();

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

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Post
// **************************************************************************

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
  final int num_comments;
  @override
  final int ups;

  factory _$Post([void updates(PostBuilder b)]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {this.id, this.author, this.url, this.title, this.num_comments, this.ups})
      : super._() {
    if (id == null) throw new ArgumentError.notNull('id');
    if (author == null) throw new ArgumentError.notNull('author');
    if (url == null) throw new ArgumentError.notNull('url');
    if (title == null) throw new ArgumentError.notNull('title');
    if (num_comments == null) throw new ArgumentError.notNull('num_comments');
    if (ups == null) throw new ArgumentError.notNull('ups');
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
        num_comments == other.num_comments &&
        ups == other.ups;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), author.hashCode), url.hashCode),
                title.hashCode),
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
    final result = _$v ??
        new _$Post._(
            id: id,
            author: author,
            url: url,
            title: title,
            num_comments: num_comments,
            ups: ups);
    replace(result);
    return result;
  }
}
