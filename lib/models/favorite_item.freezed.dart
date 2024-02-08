// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteItem {
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteItemCopyWith<FavoriteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteItemCopyWith<$Res> {
  factory $FavoriteItemCopyWith(
          FavoriteItem value, $Res Function(FavoriteItem) then) =
      _$FavoriteItemCopyWithImpl<$Res, FavoriteItem>;
  @useResult
  $Res call({String title, String imageUrl, String id, String source});
}

/// @nodoc
class _$FavoriteItemCopyWithImpl<$Res, $Val extends FavoriteItem>
    implements $FavoriteItemCopyWith<$Res> {
  _$FavoriteItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? id = null,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteItemImplCopyWith<$Res>
    implements $FavoriteItemCopyWith<$Res> {
  factory _$$FavoriteItemImplCopyWith(
          _$FavoriteItemImpl value, $Res Function(_$FavoriteItemImpl) then) =
      __$$FavoriteItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageUrl, String id, String source});
}

/// @nodoc
class __$$FavoriteItemImplCopyWithImpl<$Res>
    extends _$FavoriteItemCopyWithImpl<$Res, _$FavoriteItemImpl>
    implements _$$FavoriteItemImplCopyWith<$Res> {
  __$$FavoriteItemImplCopyWithImpl(
      _$FavoriteItemImpl _value, $Res Function(_$FavoriteItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? id = null,
    Object? source = null,
  }) {
    return _then(_$FavoriteItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteItemImpl implements _FavoriteItem {
  const _$FavoriteItemImpl(
      {this.title = "", this.imageUrl = "", this.id = "", this.source = ""});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String source;

  @override
  String toString() {
    return 'FavoriteItem(title: $title, imageUrl: $imageUrl, id: $id, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, imageUrl, id, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteItemImplCopyWith<_$FavoriteItemImpl> get copyWith =>
      __$$FavoriteItemImplCopyWithImpl<_$FavoriteItemImpl>(this, _$identity);
}

abstract class _FavoriteItem implements FavoriteItem {
  const factory _FavoriteItem(
      {final String title,
      final String imageUrl,
      final String id,
      final String source}) = _$FavoriteItemImpl;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  String get id;
  @override
  String get source;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteItemImplCopyWith<_$FavoriteItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteItemState {
  List<FavoriteItem> get favoriteItemList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteItemStateCopyWith<FavoriteItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteItemStateCopyWith<$Res> {
  factory $FavoriteItemStateCopyWith(
          FavoriteItemState value, $Res Function(FavoriteItemState) then) =
      _$FavoriteItemStateCopyWithImpl<$Res, FavoriteItemState>;
  @useResult
  $Res call({List<FavoriteItem> favoriteItemList});
}

/// @nodoc
class _$FavoriteItemStateCopyWithImpl<$Res, $Val extends FavoriteItemState>
    implements $FavoriteItemStateCopyWith<$Res> {
  _$FavoriteItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteItemList = null,
  }) {
    return _then(_value.copyWith(
      favoriteItemList: null == favoriteItemList
          ? _value.favoriteItemList
          : favoriteItemList // ignore: cast_nullable_to_non_nullable
              as List<FavoriteItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteItemStateImplCopyWith<$Res>
    implements $FavoriteItemStateCopyWith<$Res> {
  factory _$$FavoriteItemStateImplCopyWith(_$FavoriteItemStateImpl value,
          $Res Function(_$FavoriteItemStateImpl) then) =
      __$$FavoriteItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FavoriteItem> favoriteItemList});
}

/// @nodoc
class __$$FavoriteItemStateImplCopyWithImpl<$Res>
    extends _$FavoriteItemStateCopyWithImpl<$Res, _$FavoriteItemStateImpl>
    implements _$$FavoriteItemStateImplCopyWith<$Res> {
  __$$FavoriteItemStateImplCopyWithImpl(_$FavoriteItemStateImpl _value,
      $Res Function(_$FavoriteItemStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteItemList = null,
  }) {
    return _then(_$FavoriteItemStateImpl(
      favoriteItemList: null == favoriteItemList
          ? _value._favoriteItemList
          : favoriteItemList // ignore: cast_nullable_to_non_nullable
              as List<FavoriteItem>,
    ));
  }
}

/// @nodoc

class _$FavoriteItemStateImpl implements _FavoriteItemState {
  const _$FavoriteItemStateImpl(
      {final List<FavoriteItem> favoriteItemList = const []})
      : _favoriteItemList = favoriteItemList;

  final List<FavoriteItem> _favoriteItemList;
  @override
  @JsonKey()
  List<FavoriteItem> get favoriteItemList {
    if (_favoriteItemList is EqualUnmodifiableListView)
      return _favoriteItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteItemList);
  }

  @override
  String toString() {
    return 'FavoriteItemState(favoriteItemList: $favoriteItemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteItemStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favoriteItemList, _favoriteItemList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoriteItemList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteItemStateImplCopyWith<_$FavoriteItemStateImpl> get copyWith =>
      __$$FavoriteItemStateImplCopyWithImpl<_$FavoriteItemStateImpl>(
          this, _$identity);
}

abstract class _FavoriteItemState implements FavoriteItemState {
  const factory _FavoriteItemState(
      {final List<FavoriteItem> favoriteItemList}) = _$FavoriteItemStateImpl;

  @override
  List<FavoriteItem> get favoriteItemList;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteItemStateImplCopyWith<_$FavoriteItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
