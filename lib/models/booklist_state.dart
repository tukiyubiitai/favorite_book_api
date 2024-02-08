import 'package:freezed_annotation/freezed_annotation.dart';

import 'book.dart';

part 'booklist_state.freezed.dart';

@freezed
class RakutenListState with _$RakutenListState {
  const factory RakutenListState({
    @Default([]) List<RakutenBook> books,
    @Default({}) Set<String> wishlist,

  }) = _RakutenListState;
}

@freezed
class GoogleListState with _$GoogleListState {
  const factory GoogleListState({
    @Default([]) List<GoogleBook> books,
    @Default({}) Set<String> wishlist,

  }) = _GoogleListState;
}
