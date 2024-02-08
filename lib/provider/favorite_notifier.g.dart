// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$favoriteItemNotifierHash() =>
    r'04a3f525d170ca2fc8f83a59e825d464cd0f609a';

/// See also [FavoriteItemNotifier].
@ProviderFor(FavoriteItemNotifier)
final favoriteItemNotifierProvider =
    AutoDisposeNotifierProvider<FavoriteItemNotifier, FavoriteItem>.internal(
  FavoriteItemNotifier.new,
  name: r'favoriteItemNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$favoriteItemNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FavoriteItemNotifier = AutoDisposeNotifier<FavoriteItem>;
String _$favoriteListNotifierHash() =>
    r'245b546b5c471b34649f73fd0c101509caaf0eca';

/// See also [FavoriteListNotifier].
@ProviderFor(FavoriteListNotifier)
final favoriteListNotifierProvider =
    NotifierProvider<FavoriteListNotifier, List<FavoriteItem>>.internal(
  FavoriteListNotifier.new,
  name: r'favoriteListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$favoriteListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FavoriteListNotifier = Notifier<List<FavoriteItem>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
