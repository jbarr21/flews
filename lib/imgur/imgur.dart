library imgur;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'imgur.g.dart';

abstract class GalleryItems
    implements Built<GalleryItems, GalleryItemsBuilder> {
  BuiltList<ImageItem> get data;

  GalleryItems._();
  factory GalleryItems([updates(GalleryItemsBuilder b)]) = _$GalleryItems;
  static Serializer<GalleryItems> get serializer => _$galleryItemsSerializer;
}

abstract class ImageItem implements Built<ImageItem, ImageItemBuilder> {
  String get id;
  String get link;
  @nullable
  String get cover;

  ImageItem._();
  factory ImageItem([updates(ImageItemBuilder b)]) = _$ImageItem;
  static Serializer<ImageItem> get serializer => _$imageItemSerializer;
}
