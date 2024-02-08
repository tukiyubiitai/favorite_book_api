// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RakutenBookImpl _$$RakutenBookImplFromJson(Map<String, dynamic> json) =>
    _$RakutenBookImpl(
      title: json['title'] as String,
      id: json['isbn'] as String,
      imageUrl: json['largeImageUrl'] as String,
    );

Map<String, dynamic> _$$RakutenBookImplToJson(_$RakutenBookImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'isbn': instance.id,
      'largeImageUrl': instance.imageUrl,
    };

_$GoogleBookImpl _$$GoogleBookImplFromJson(Map<String, dynamic> json) =>
    _$GoogleBookImpl(
      id: json['id'] as String,
      volumeInfo:
          VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GoogleBookImplToJson(_$GoogleBookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'volumeInfo': instance.volumeInfo,
    };

_$VolumeInfoImpl _$$VolumeInfoImplFromJson(Map<String, dynamic> json) =>
    _$VolumeInfoImpl(
      title: json['title'] as String,
      imageLinks: json['imageLinks'] == null
          ? null
          : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VolumeInfoImplToJson(_$VolumeInfoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageLinks': instance.imageLinks,
    };

_$ImageLinksImpl _$$ImageLinksImplFromJson(Map<String, dynamic> json) =>
    _$ImageLinksImpl(
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$ImageLinksImplToJson(_$ImageLinksImpl instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
    };
