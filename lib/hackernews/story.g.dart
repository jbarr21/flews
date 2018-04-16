// GENERATED CODE - DO NOT MODIFY BY HAND

part of story;

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

Serializer<Story> _$storySerializer = new _$StorySerializer();

class _$StorySerializer implements StructuredSerializer<Story> {
  @override
  final Iterable<Type> types = const [Story, _$Story];
  @override
  final String wireName = 'Story';

  @override
  Iterable serialize(Serializers serializers, Story object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'by',
      serializers.serialize(object.by, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
    ];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.deleted != null) {
      result
        ..add('deleted')
        ..add(serializers.serialize(object.deleted,
            specifiedType: const FullType(bool)));
    }
    if (object.kids != null) {
      result
        ..add('kids')
        ..add(serializers.serialize(object.kids,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }

    return result;
  }

  @override
  Story deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new StoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'by':
          result.by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'kids':
          result.kids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Story extends Story {
  @override
  final int id;
  @override
  final String by;
  @override
  final String title;
  @override
  final String url;
  @override
  final String type;
  @override
  final bool deleted;
  @override
  final int time;
  @override
  final int score;
  @override
  final BuiltList<int> kids;

  factory _$Story([void updates(StoryBuilder b)]) =>
      (new StoryBuilder()..update(updates)).build();

  _$Story._(
      {this.id,
      this.by,
      this.title,
      this.url,
      this.type,
      this.deleted,
      this.time,
      this.score,
      this.kids})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Story', 'id');
    if (by == null) throw new BuiltValueNullFieldError('Story', 'by');
    if (title == null) throw new BuiltValueNullFieldError('Story', 'title');
    if (type == null) throw new BuiltValueNullFieldError('Story', 'type');
    if (time == null) throw new BuiltValueNullFieldError('Story', 'time');
    if (score == null) throw new BuiltValueNullFieldError('Story', 'score');
  }

  @override
  Story rebuild(void updates(StoryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StoryBuilder toBuilder() => new StoryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Story) return false;
    return id == other.id &&
        by == other.by &&
        title == other.title &&
        url == other.url &&
        type == other.type &&
        deleted == other.deleted &&
        time == other.time &&
        score == other.score &&
        kids == other.kids;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), by.hashCode),
                                title.hashCode),
                            url.hashCode),
                        type.hashCode),
                    deleted.hashCode),
                time.hashCode),
            score.hashCode),
        kids.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Story')
          ..add('id', id)
          ..add('by', by)
          ..add('title', title)
          ..add('url', url)
          ..add('type', type)
          ..add('deleted', deleted)
          ..add('time', time)
          ..add('score', score)
          ..add('kids', kids))
        .toString();
  }
}

class StoryBuilder implements Builder<Story, StoryBuilder> {
  _$Story _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _by;
  String get by => _$this._by;
  set by(String by) => _$this._by = by;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  bool _deleted;
  bool get deleted => _$this._deleted;
  set deleted(bool deleted) => _$this._deleted = deleted;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  ListBuilder<int> _kids;
  ListBuilder<int> get kids => _$this._kids ??= new ListBuilder<int>();
  set kids(ListBuilder<int> kids) => _$this._kids = kids;

  StoryBuilder();

  StoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _by = _$v.by;
      _title = _$v.title;
      _url = _$v.url;
      _type = _$v.type;
      _deleted = _$v.deleted;
      _time = _$v.time;
      _score = _$v.score;
      _kids = _$v.kids?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Story other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Story;
  }

  @override
  void update(void updates(StoryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Story build() {
    _$Story _$result;
    try {
      _$result = _$v ??
          new _$Story._(
              id: id,
              by: by,
              title: title,
              url: url,
              type: type,
              deleted: deleted,
              time: time,
              score: score,
              kids: _kids?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'kids';
        _kids?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Story', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
