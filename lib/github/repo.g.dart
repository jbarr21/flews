// GENERATED CODE - DO NOT MODIFY BY HAND

part of repo;

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

Serializer<Repos> _$reposSerializer = new _$ReposSerializer();
Serializer<Repo> _$repoSerializer = new _$RepoSerializer();
Serializer<RepoOwner> _$repoOwnerSerializer = new _$RepoOwnerSerializer();

class _$ReposSerializer implements StructuredSerializer<Repos> {
  @override
  final Iterable<Type> types = const [Repos, _$Repos];
  @override
  final String wireName = 'Repos';

  @override
  Iterable serialize(Serializers serializers, Repos object,
      {FullType specifiedType = FullType.unspecified}) {
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
      {FullType specifiedType = FullType.unspecified}) {
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
              as BuiltList);
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
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'full_name',
      serializers.serialize(object.full_name,
          specifiedType: const FullType(String)),
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(RepoOwner)),
      'html_url',
      serializers.serialize(object.html_url,
          specifiedType: const FullType(String)),
      'language',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.created_at,
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
      {FullType specifiedType = FullType.unspecified}) {
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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.full_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(RepoOwner)) as RepoOwner);
          break;
        case 'html_url':
          result.html_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
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

class _$RepoOwnerSerializer implements StructuredSerializer<RepoOwner> {
  @override
  final Iterable<Type> types = const [RepoOwner, _$RepoOwner];
  @override
  final String wireName = 'RepoOwner';

  @override
  Iterable serialize(Serializers serializers, RepoOwner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RepoOwner deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepoOwnerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Repos extends Repos {
  @override
  final BuiltList<Repo> items;

  factory _$Repos([void updates(ReposBuilder b)]) =>
      (new ReposBuilder()..update(updates)).build();

  _$Repos._({this.items}) : super._() {
    if (items == null) throw new BuiltValueNullFieldError('Repos', 'items');
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
    _$Repos _$result;
    try {
      _$result = _$v ?? new _$Repos._(items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Repos', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Repo extends Repo {
  @override
  final int id;
  @override
  final String name;
  @override
  final String full_name;
  @override
  final RepoOwner owner;
  @override
  final String html_url;
  @override
  final String language;
  @override
  final String created_at;
  @override
  final String description;
  @override
  final int stargazers_count;

  factory _$Repo([void updates(RepoBuilder b)]) =>
      (new RepoBuilder()..update(updates)).build();

  _$Repo._(
      {this.id,
      this.name,
      this.full_name,
      this.owner,
      this.html_url,
      this.language,
      this.created_at,
      this.description,
      this.stargazers_count})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Repo', 'id');
    if (name == null) throw new BuiltValueNullFieldError('Repo', 'name');
    if (full_name == null)
      throw new BuiltValueNullFieldError('Repo', 'full_name');
    if (owner == null) throw new BuiltValueNullFieldError('Repo', 'owner');
    if (html_url == null)
      throw new BuiltValueNullFieldError('Repo', 'html_url');
    if (language == null)
      throw new BuiltValueNullFieldError('Repo', 'language');
    if (created_at == null)
      throw new BuiltValueNullFieldError('Repo', 'created_at');
    if (stargazers_count == null)
      throw new BuiltValueNullFieldError('Repo', 'stargazers_count');
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
        name == other.name &&
        full_name == other.full_name &&
        owner == other.owner &&
        html_url == other.html_url &&
        language == other.language &&
        created_at == other.created_at &&
        description == other.description &&
        stargazers_count == other.stargazers_count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), name.hashCode),
                                full_name.hashCode),
                            owner.hashCode),
                        html_url.hashCode),
                    language.hashCode),
                created_at.hashCode),
            description.hashCode),
        stargazers_count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Repo')
          ..add('id', id)
          ..add('name', name)
          ..add('full_name', full_name)
          ..add('owner', owner)
          ..add('html_url', html_url)
          ..add('language', language)
          ..add('created_at', created_at)
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

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _full_name;
  String get full_name => _$this._full_name;
  set full_name(String full_name) => _$this._full_name = full_name;

  RepoOwnerBuilder _owner;
  RepoOwnerBuilder get owner => _$this._owner ??= new RepoOwnerBuilder();
  set owner(RepoOwnerBuilder owner) => _$this._owner = owner;

  String _html_url;
  String get html_url => _$this._html_url;
  set html_url(String html_url) => _$this._html_url = html_url;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _created_at;
  String get created_at => _$this._created_at;
  set created_at(String created_at) => _$this._created_at = created_at;

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
      _name = _$v.name;
      _full_name = _$v.full_name;
      _owner = _$v.owner?.toBuilder();
      _html_url = _$v.html_url;
      _language = _$v.language;
      _created_at = _$v.created_at;
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
    _$Repo _$result;
    try {
      _$result = _$v ??
          new _$Repo._(
              id: id,
              name: name,
              full_name: full_name,
              owner: owner.build(),
              html_url: html_url,
              language: language,
              created_at: created_at,
              description: description,
              stargazers_count: stargazers_count);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Repo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RepoOwner extends RepoOwner {
  @override
  final String login;

  factory _$RepoOwner([void updates(RepoOwnerBuilder b)]) =>
      (new RepoOwnerBuilder()..update(updates)).build();

  _$RepoOwner._({this.login}) : super._() {
    if (login == null) throw new BuiltValueNullFieldError('RepoOwner', 'login');
  }

  @override
  RepoOwner rebuild(void updates(RepoOwnerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RepoOwnerBuilder toBuilder() => new RepoOwnerBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! RepoOwner) return false;
    return login == other.login;
  }

  @override
  int get hashCode {
    return $jf($jc(0, login.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepoOwner')..add('login', login))
        .toString();
  }
}

class RepoOwnerBuilder implements Builder<RepoOwner, RepoOwnerBuilder> {
  _$RepoOwner _$v;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  RepoOwnerBuilder();

  RepoOwnerBuilder get _$this {
    if (_$v != null) {
      _login = _$v.login;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepoOwner other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$RepoOwner;
  }

  @override
  void update(void updates(RepoOwnerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RepoOwner build() {
    final _$result = _$v ?? new _$RepoOwner._(login: login);
    replace(_$result);
    return _$result;
  }
}
