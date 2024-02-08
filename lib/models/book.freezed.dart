// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RakutenBook _$RakutenBookFromJson(Map<String, dynamic> json) {
  return _RakutenBook.fromJson(json);
}

/// @nodoc
mixin _$RakutenBook {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'isbn')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'largeImageUrl')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RakutenBookCopyWith<RakutenBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RakutenBookCopyWith<$Res> {
  factory $RakutenBookCopyWith(
          RakutenBook value, $Res Function(RakutenBook) then) =
      _$RakutenBookCopyWithImpl<$Res, RakutenBook>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'isbn') String id,
      @JsonKey(name: 'largeImageUrl') String imageUrl});
}

/// @nodoc
class _$RakutenBookCopyWithImpl<$Res, $Val extends RakutenBook>
    implements $RakutenBookCopyWith<$Res> {
  _$RakutenBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RakutenBookImplCopyWith<$Res>
    implements $RakutenBookCopyWith<$Res> {
  factory _$$RakutenBookImplCopyWith(
          _$RakutenBookImpl value, $Res Function(_$RakutenBookImpl) then) =
      __$$RakutenBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'isbn') String id,
      @JsonKey(name: 'largeImageUrl') String imageUrl});
}

/// @nodoc
class __$$RakutenBookImplCopyWithImpl<$Res>
    extends _$RakutenBookCopyWithImpl<$Res, _$RakutenBookImpl>
    implements _$$RakutenBookImplCopyWith<$Res> {
  __$$RakutenBookImplCopyWithImpl(
      _$RakutenBookImpl _value, $Res Function(_$RakutenBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? imageUrl = null,
  }) {
    return _then(_$RakutenBookImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RakutenBookImpl implements _RakutenBook {
  const _$RakutenBookImpl(
      {required this.title,
      @JsonKey(name: 'isbn') required this.id,
      @JsonKey(name: 'largeImageUrl') required this.imageUrl});

  factory _$RakutenBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$RakutenBookImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'isbn')
  final String id;
  @override
  @JsonKey(name: 'largeImageUrl')
  final String imageUrl;

  @override
  String toString() {
    return 'RakutenBook(title: $title, id: $id, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RakutenBookImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, id, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RakutenBookImplCopyWith<_$RakutenBookImpl> get copyWith =>
      __$$RakutenBookImplCopyWithImpl<_$RakutenBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RakutenBookImplToJson(
      this,
    );
  }
}

abstract class _RakutenBook implements RakutenBook {
  const factory _RakutenBook(
          {required final String title,
          @JsonKey(name: 'isbn') required final String id,
          @JsonKey(name: 'largeImageUrl') required final String imageUrl}) =
      _$RakutenBookImpl;

  factory _RakutenBook.fromJson(Map<String, dynamic> json) =
      _$RakutenBookImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'isbn')
  String get id;
  @override
  @JsonKey(name: 'largeImageUrl')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$RakutenBookImplCopyWith<_$RakutenBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoogleBook _$GoogleBookFromJson(Map<String, dynamic> json) {
  return _GoogleBook.fromJson(json);
}

/// @nodoc
mixin _$GoogleBook {
  String get id => throw _privateConstructorUsedError;
  VolumeInfo get volumeInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleBookCopyWith<GoogleBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleBookCopyWith<$Res> {
  factory $GoogleBookCopyWith(
          GoogleBook value, $Res Function(GoogleBook) then) =
      _$GoogleBookCopyWithImpl<$Res, GoogleBook>;
  @useResult
  $Res call({String id, VolumeInfo volumeInfo});

  $VolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class _$GoogleBookCopyWithImpl<$Res, $Val extends GoogleBook>
    implements $GoogleBookCopyWith<$Res> {
  _$GoogleBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? volumeInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      volumeInfo: null == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VolumeInfoCopyWith<$Res> get volumeInfo {
    return $VolumeInfoCopyWith<$Res>(_value.volumeInfo, (value) {
      return _then(_value.copyWith(volumeInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoogleBookImplCopyWith<$Res>
    implements $GoogleBookCopyWith<$Res> {
  factory _$$GoogleBookImplCopyWith(
          _$GoogleBookImpl value, $Res Function(_$GoogleBookImpl) then) =
      __$$GoogleBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, VolumeInfo volumeInfo});

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class __$$GoogleBookImplCopyWithImpl<$Res>
    extends _$GoogleBookCopyWithImpl<$Res, _$GoogleBookImpl>
    implements _$$GoogleBookImplCopyWith<$Res> {
  __$$GoogleBookImplCopyWithImpl(
      _$GoogleBookImpl _value, $Res Function(_$GoogleBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? volumeInfo = null,
  }) {
    return _then(_$GoogleBookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      volumeInfo: null == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleBookImpl implements _GoogleBook {
  const _$GoogleBookImpl({required this.id, required this.volumeInfo});

  factory _$GoogleBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleBookImplFromJson(json);

  @override
  final String id;
  @override
  final VolumeInfo volumeInfo;

  @override
  String toString() {
    return 'GoogleBook(id: $id, volumeInfo: $volumeInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleBookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.volumeInfo, volumeInfo) ||
                other.volumeInfo == volumeInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, volumeInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleBookImplCopyWith<_$GoogleBookImpl> get copyWith =>
      __$$GoogleBookImplCopyWithImpl<_$GoogleBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleBookImplToJson(
      this,
    );
  }
}

abstract class _GoogleBook implements GoogleBook {
  const factory _GoogleBook(
      {required final String id,
      required final VolumeInfo volumeInfo}) = _$GoogleBookImpl;

  factory _GoogleBook.fromJson(Map<String, dynamic> json) =
      _$GoogleBookImpl.fromJson;

  @override
  String get id;
  @override
  VolumeInfo get volumeInfo;
  @override
  @JsonKey(ignore: true)
  _$$GoogleBookImplCopyWith<_$GoogleBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) {
  return _VolumeInfo.fromJson(json);
}

/// @nodoc
mixin _$VolumeInfo {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageLinks')
  ImageLinks? get imageLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolumeInfoCopyWith<VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeInfoCopyWith<$Res> {
  factory $VolumeInfoCopyWith(
          VolumeInfo value, $Res Function(VolumeInfo) then) =
      _$VolumeInfoCopyWithImpl<$Res, VolumeInfo>;
  @useResult
  $Res call(
      {String title, @JsonKey(name: 'imageLinks') ImageLinks? imageLinks});

  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res, $Val extends VolumeInfo>
    implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageLinks = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageLinks: freezed == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageLinksCopyWith<$Res>? get imageLinks {
    if (_value.imageLinks == null) {
      return null;
    }

    return $ImageLinksCopyWith<$Res>(_value.imageLinks!, (value) {
      return _then(_value.copyWith(imageLinks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VolumeInfoImplCopyWith<$Res>
    implements $VolumeInfoCopyWith<$Res> {
  factory _$$VolumeInfoImplCopyWith(
          _$VolumeInfoImpl value, $Res Function(_$VolumeInfoImpl) then) =
      __$$VolumeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, @JsonKey(name: 'imageLinks') ImageLinks? imageLinks});

  @override
  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class __$$VolumeInfoImplCopyWithImpl<$Res>
    extends _$VolumeInfoCopyWithImpl<$Res, _$VolumeInfoImpl>
    implements _$$VolumeInfoImplCopyWith<$Res> {
  __$$VolumeInfoImplCopyWithImpl(
      _$VolumeInfoImpl _value, $Res Function(_$VolumeInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageLinks = freezed,
  }) {
    return _then(_$VolumeInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageLinks: freezed == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolumeInfoImpl implements _VolumeInfo {
  const _$VolumeInfoImpl(
      {required this.title, @JsonKey(name: 'imageLinks') this.imageLinks});

  factory _$VolumeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolumeInfoImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'imageLinks')
  final ImageLinks? imageLinks;

  @override
  String toString() {
    return 'VolumeInfo(title: $title, imageLinks: $imageLinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolumeInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageLinks, imageLinks) ||
                other.imageLinks == imageLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, imageLinks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      __$$VolumeInfoImplCopyWithImpl<_$VolumeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolumeInfoImplToJson(
      this,
    );
  }
}

abstract class _VolumeInfo implements VolumeInfo {
  const factory _VolumeInfo(
          {required final String title,
          @JsonKey(name: 'imageLinks') final ImageLinks? imageLinks}) =
      _$VolumeInfoImpl;

  factory _VolumeInfo.fromJson(Map<String, dynamic> json) =
      _$VolumeInfoImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'imageLinks')
  ImageLinks? get imageLinks;
  @override
  @JsonKey(ignore: true)
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) {
  return _ImageLinks.fromJson(json);
}

/// @nodoc
mixin _$ImageLinks {
  @JsonKey(name: 'thumbnail')
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageLinksCopyWith<ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinksCopyWith<$Res> {
  factory $ImageLinksCopyWith(
          ImageLinks value, $Res Function(ImageLinks) then) =
      _$ImageLinksCopyWithImpl<$Res, ImageLinks>;
  @useResult
  $Res call({@JsonKey(name: 'thumbnail') String? thumbnail});
}

/// @nodoc
class _$ImageLinksCopyWithImpl<$Res, $Val extends ImageLinks>
    implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageLinksImplCopyWith<$Res>
    implements $ImageLinksCopyWith<$Res> {
  factory _$$ImageLinksImplCopyWith(
          _$ImageLinksImpl value, $Res Function(_$ImageLinksImpl) then) =
      __$$ImageLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'thumbnail') String? thumbnail});
}

/// @nodoc
class __$$ImageLinksImplCopyWithImpl<$Res>
    extends _$ImageLinksCopyWithImpl<$Res, _$ImageLinksImpl>
    implements _$$ImageLinksImplCopyWith<$Res> {
  __$$ImageLinksImplCopyWithImpl(
      _$ImageLinksImpl _value, $Res Function(_$ImageLinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = freezed,
  }) {
    return _then(_$ImageLinksImpl(
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageLinksImpl implements _ImageLinks {
  const _$ImageLinksImpl({@JsonKey(name: 'thumbnail') this.thumbnail});

  factory _$ImageLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageLinksImplFromJson(json);

  @override
  @JsonKey(name: 'thumbnail')
  final String? thumbnail;

  @override
  String toString() {
    return 'ImageLinks(thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLinksImpl &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      __$$ImageLinksImplCopyWithImpl<_$ImageLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageLinksImplToJson(
      this,
    );
  }
}

abstract class _ImageLinks implements ImageLinks {
  const factory _ImageLinks(
      {@JsonKey(name: 'thumbnail') final String? thumbnail}) = _$ImageLinksImpl;

  factory _ImageLinks.fromJson(Map<String, dynamic> json) =
      _$ImageLinksImpl.fromJson;

  @override
  @JsonKey(name: 'thumbnail')
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
