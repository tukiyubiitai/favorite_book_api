import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class RakutenBook with _$RakutenBook {
  const factory RakutenBook({
    required String title,
    @JsonKey(name: 'isbn') required String id,
    @JsonKey(name: 'largeImageUrl') required String imageUrl,
  }) = _RakutenBook;

  factory RakutenBook.fromJson(Map<String, dynamic> json) => _$RakutenBookFromJson(json);
}

@freezed
class GoogleBook with _$GoogleBook {
  const factory GoogleBook({
    required String id,
    required VolumeInfo volumeInfo,
  }) = _GoogleBook;

  factory GoogleBook.fromJson(Map<String, dynamic> json) =>
      _$GoogleBookFromJson(json);
}

@freezed
class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    required String title,
    @JsonKey(name: 'imageLinks') ImageLinks? imageLinks,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}

@freezed
class ImageLinks with _$ImageLinks {
  const factory ImageLinks({
    @JsonKey(name: 'thumbnail') String? thumbnail,
  }) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}
