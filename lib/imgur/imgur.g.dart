// GENERATED CODE - DO NOT MODIFY BY HAND

part of imgur;

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

Serializer<GalleryItems> _$galleryItemsSerializer =
    new _$GalleryItemsSerializer();
Serializer<ImageItem> _$imageItemSerializer = new _$ImageItemSerializer();

class _$GalleryItemsSerializer implements StructuredSerializer<GalleryItems> {
  @override
  final Iterable<Type> types = const [GalleryItems, _$GalleryItems];
  @override
  final String wireName = 'GalleryItems';

  @override
  Iterable serialize(Serializers serializers, GalleryItems object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ImageItem)])),
    ];

    return result;
  }

  @override
  GalleryItems deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GalleryItemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(ImageItem)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ImageItemSerializer implements StructuredSerializer<ImageItem> {
  @override
  final Iterable<Type> types = const [ImageItem, _$ImageItem];
  @override
  final String wireName = 'ImageItem';

  @override
  Iterable serialize(Serializers serializers, ImageItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'link',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
    ];
    if (object.cover != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(object.cover,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ImageItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageItemBuilder();

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
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GalleryItems extends GalleryItems {
  @override
  final BuiltList<ImageItem> data;

  factory _$GalleryItems([void updates(GalleryItemsBuilder b)]) =>
      (new GalleryItemsBuilder()..update(updates)).build();

  _$GalleryItems._({this.data}) : super._() {
    if (data == null)
      throw new BuiltValueNullFieldError('GalleryItems', 'data');
  }

  @override
  GalleryItems rebuild(void updates(GalleryItemsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GalleryItemsBuilder toBuilder() => new GalleryItemsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GalleryItems) return false;
    return data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GalleryItems')..add('data', data))
        .toString();
  }
}

class GalleryItemsBuilder
    implements Builder<GalleryItems, GalleryItemsBuilder> {
  _$GalleryItems _$v;

  ListBuilder<ImageItem> _data;
  ListBuilder<ImageItem> get data =>
      _$this._data ??= new ListBuilder<ImageItem>();
  set data(ListBuilder<ImageItem> data) => _$this._data = data;

  GalleryItemsBuilder();

  GalleryItemsBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GalleryItems other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GalleryItems;
  }

  @override
  void update(void updates(GalleryItemsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GalleryItems build() {
    _$GalleryItems _$result;
    try {
      _$result = _$v ?? new _$GalleryItems._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GalleryItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ImageItem extends ImageItem {
  @override
  final String id;
  @override
  final String link;
  @override
  final String cover;

  factory _$ImageItem([void updates(ImageItemBuilder b)]) =>
      (new ImageItemBuilder()..update(updates)).build();

  _$ImageItem._({this.id, this.link, this.cover}) : super._() {
    if (id == null) throw new BuiltValueNullFieldError('ImageItem', 'id');
    if (link == null) throw new BuiltValueNullFieldError('ImageItem', 'link');
  }

  @override
  ImageItem rebuild(void updates(ImageItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageItemBuilder toBuilder() => new ImageItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ImageItem) return false;
    return id == other.id && link == other.link && cover == other.cover;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), link.hashCode), cover.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageItem')
          ..add('id', id)
          ..add('link', link)
          ..add('cover', cover))
        .toString();
  }
}

class ImageItemBuilder implements Builder<ImageItem, ImageItemBuilder> {
  _$ImageItem _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  ImageItemBuilder();

  ImageItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _link = _$v.link;
      _cover = _$v.cover;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ImageItem;
  }

  @override
  void update(void updates(ImageItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageItem build() {
    final _$result = _$v ?? new _$ImageItem._(id: id, link: link, cover: cover);
    replace(_$result);
    return _$result;
  }
}
