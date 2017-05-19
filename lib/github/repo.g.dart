// GENERATED CODE - DO NOT MODIFY BY HAND

part of repo;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library repo
// **************************************************************************

Serializer<Repos> _$reposSerializer = new _$ReposSerializer();
Serializer<Repo> _$repoSerializer = new _$RepoSerializer();

class _$ReposSerializer implements StructuredSerializer<Repos> {
  @override
  final Iterable<Type> types = const [Repos, _$Repos];
  @override
  final String wireName = 'Repos';

  @override
  Iterable serialize(Serializers serializers, Repos object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Repo)])),
    ];

    return result;
  }

  @override
  Repos deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ReposBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Repo)]))
              as BuiltList<Repo>);
          break;
      }
    }

    return result.build();
  }
}

class _$RepoSerializer implements StructuredSerializer<Repo> {
  @override
  final Iterable<Type> types = const [Repo, _$Repo];
  @override
  final String wireName = 'Repo';

  @override
  Iterable serialize(Serializers serializers, Repo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'full_name',
      serializers.serialize(object.full_name,
          specifiedType: const FullType(String)),
      'html_url',
      serializers.serialize(object.html_url,
          specifiedType: const FullType(String)),
      'stargazers_count',
      serializers.serialize(object.stargazers_count,
          specifiedType: const FullType(int)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Repo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new RepoBuilder();

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
        case 'full_name':
          result.full_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.html_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stargazers_count':
          result.stargazers_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Repos
// **************************************************************************

class _$Repos extends Repos {
  @override
  final BuiltList<Repo> items;

  factory _$Repos([void updates(ReposBuilder b)]) =>
      (new ReposBuilder()..update(updates)).build();

  _$Repos._({this.items}) : super._() {
    if (items == null) throw new ArgumentError.notNull('items');
  }

  @override
  Repos rebuild(void updates(ReposBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposBuilder toBuilder() => new ReposBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Repos) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Repos')..add('items', items))
        .toString();
  }
}

class ReposBuilder implements Builder<Repos, ReposBuilder> {
  _$Repos _$v;

  ListBuilder<Repo> _items;
  ListBuilder<Repo> get items => _$this._items ??= new ListBuilder<Repo>();
  set items(ListBuilder<Repo> items) => _$this._items = items;

  ReposBuilder();

  ReposBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Repos other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Repos;
  }

  @override
  void update(void updates(ReposBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Repos build() {
    final result = _$v ?? new _$Repos._(items: items?.build());
    replace(result);
    return result;
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Repo
// **************************************************************************

class _$Repo extends Repo {
  @override
  final int id;
  @override
  final String full_name;
  @override
  final String html_url;
  @override
  final String description;
  @override
  final int stargazers_count;

  factory _$Repo([void updates(RepoBuilder b)]) =>
      (new RepoBuilder()..update(updates)).build();

  _$Repo._(
      {this.id,
      this.full_name,
      this.html_url,
      this.description,
      this.stargazers_count})
      : super._() {
    if (id == null) throw new ArgumentError.notNull('id');
    if (full_name == null) throw new ArgumentError.notNull('full_name');
    if (html_url == null) throw new ArgumentError.notNull('html_url');
    if (stargazers_count == null)
      throw new ArgumentError.notNull('stargazers_count');
  }

  @override
  Repo rebuild(void updates(RepoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RepoBuilder toBuilder() => new RepoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Repo) return false;
    return id == other.id &&
        full_name == other.full_name &&
        html_url == other.html_url &&
        description == other.description &&
        stargazers_count == other.stargazers_count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), full_name.hashCode),
                html_url.hashCode),
            description.hashCode),
        stargazers_count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Repo')
          ..add('id', id)
          ..add('full_name', full_name)
          ..add('html_url', html_url)
          ..add('description', description)
          ..add('stargazers_count', stargazers_count))
        .toString();
  }
}

class RepoBuilder implements Builder<Repo, RepoBuilder> {
  _$Repo _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _full_name;
  String get full_name => _$this._full_name;
  set full_name(String full_name) => _$this._full_name = full_name;

  String _html_url;
  String get html_url => _$this._html_url;
  set html_url(String html_url) => _$this._html_url = html_url;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _stargazers_count;
  int get stargazers_count => _$this._stargazers_count;
  set stargazers_count(int stargazers_count) =>
      _$this._stargazers_count = stargazers_count;

  RepoBuilder();

  RepoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _full_name = _$v.full_name;
      _html_url = _$v.html_url;
      _description = _$v.description;
      _stargazers_count = _$v.stargazers_count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Repo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Repo;
  }

  @override
  void update(void updates(RepoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Repo build() {
    final result = _$v ??
        new _$Repo._(
            id: id,
            full_name: full_name,
            html_url: html_url,
            description: description,
            stargazers_count: stargazers_count);
    replace(result);
    return result;
  }
}
