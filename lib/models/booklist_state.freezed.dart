// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booklist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RakutenListState {
  List<RakutenBook> get books => throw _privateConstructorUsedError;
  Set<String> get wishlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RakutenListStateCopyWith<RakutenListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RakutenListStateCopyWith<$Res> {
  factory $RakutenListStateCopyWith(
          RakutenListState value, $Res Function(RakutenListState) then) =
      _$RakutenListStateCopyWithImpl<$Res, RakutenListState>;
  @useResult
  $Res call({List<RakutenBook> books, Set<String> wishlist});
}

/// @nodoc
class _$RakutenListStateCopyWithImpl<$Res, $Val extends RakutenListState>
    implements $RakutenListStateCopyWith<$Res> {
  _$RakutenListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? wishlist = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<RakutenBook>,
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RakutenListStateImplCopyWith<$Res>
    implements $RakutenListStateCopyWith<$Res> {
  factory _$$RakutenListStateImplCopyWith(_$RakutenListStateImpl value,
          $Res Function(_$RakutenListStateImpl) then) =
      __$$RakutenListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RakutenBook> books, Set<String> wishlist});
}

/// @nodoc
class __$$RakutenListStateImplCopyWithImpl<$Res>
    extends _$RakutenListStateCopyWithImpl<$Res, _$RakutenListStateImpl>
    implements _$$RakutenListStateImplCopyWith<$Res> {
  __$$RakutenListStateImplCopyWithImpl(_$RakutenListStateImpl _value,
      $Res Function(_$RakutenListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? wishlist = null,
  }) {
    return _then(_$RakutenListStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<RakutenBook>,
      wishlist: null == wishlist
          ? _value._wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$RakutenListStateImpl implements _RakutenListState {
  const _$RakutenListStateImpl(
      {final List<RakutenBook> books = const [],
      final Set<String> wishlist = const {}})
      : _books = books,
        _wishlist = wishlist;

  final List<RakutenBook> _books;
  @override
  @JsonKey()
  List<RakutenBook> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  final Set<String> _wishlist;
  @override
  @JsonKey()
  Set<String> get wishlist {
    if (_wishlist is EqualUnmodifiableSetView) return _wishlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_wishlist);
  }

  @override
  String toString() {
    return 'RakutenListState(books: $books, wishlist: $wishlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RakutenListStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_wishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RakutenListStateImplCopyWith<_$RakutenListStateImpl> get copyWith =>
      __$$RakutenListStateImplCopyWithImpl<_$RakutenListStateImpl>(
          this, _$identity);
}

abstract class _RakutenListState implements RakutenListState {
  const factory _RakutenListState(
      {final List<RakutenBook> books,
      final Set<String> wishlist}) = _$RakutenListStateImpl;

  @override
  List<RakutenBook> get books;
  @override
  Set<String> get wishlist;
  @override
  @JsonKey(ignore: true)
  _$$RakutenListStateImplCopyWith<_$RakutenListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoogleListState {
  List<GoogleBook> get books => throw _privateConstructorUsedError;
  Set<String> get wishlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleListStateCopyWith<GoogleListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleListStateCopyWith<$Res> {
  factory $GoogleListStateCopyWith(
          GoogleListState value, $Res Function(GoogleListState) then) =
      _$GoogleListStateCopyWithImpl<$Res, GoogleListState>;
  @useResult
  $Res call({List<GoogleBook> books, Set<String> wishlist});
}

/// @nodoc
class _$GoogleListStateCopyWithImpl<$Res, $Val extends GoogleListState>
    implements $GoogleListStateCopyWith<$Res> {
  _$GoogleListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? wishlist = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<GoogleBook>,
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleListStateImplCopyWith<$Res>
    implements $GoogleListStateCopyWith<$Res> {
  factory _$$GoogleListStateImplCopyWith(_$GoogleListStateImpl value,
          $Res Function(_$GoogleListStateImpl) then) =
      __$$GoogleListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GoogleBook> books, Set<String> wishlist});
}

/// @nodoc
class __$$GoogleListStateImplCopyWithImpl<$Res>
    extends _$GoogleListStateCopyWithImpl<$Res, _$GoogleListStateImpl>
    implements _$$GoogleListStateImplCopyWith<$Res> {
  __$$GoogleListStateImplCopyWithImpl(
      _$GoogleListStateImpl _value, $Res Function(_$GoogleListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? wishlist = null,
  }) {
    return _then(_$GoogleListStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<GoogleBook>,
      wishlist: null == wishlist
          ? _value._wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$GoogleListStateImpl implements _GoogleListState {
  const _$GoogleListStateImpl(
      {final List<GoogleBook> books = const [],
      final Set<String> wishlist = const {}})
      : _books = books,
        _wishlist = wishlist;

  final List<GoogleBook> _books;
  @override
  @JsonKey()
  List<GoogleBook> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  final Set<String> _wishlist;
  @override
  @JsonKey()
  Set<String> get wishlist {
    if (_wishlist is EqualUnmodifiableSetView) return _wishlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_wishlist);
  }

  @override
  String toString() {
    return 'GoogleListState(books: $books, wishlist: $wishlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleListStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_wishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleListStateImplCopyWith<_$GoogleListStateImpl> get copyWith =>
      __$$GoogleListStateImplCopyWithImpl<_$GoogleListStateImpl>(
          this, _$identity);
}

abstract class _GoogleListState implements GoogleListState {
  const factory _GoogleListState(
      {final List<GoogleBook> books,
      final Set<String> wishlist}) = _$GoogleListStateImpl;

  @override
  List<GoogleBook> get books;
  @override
  Set<String> get wishlist;
  @override
  @JsonKey(ignore: true)
  _$$GoogleListStateImplCopyWith<_$GoogleListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
