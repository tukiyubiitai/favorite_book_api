import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/favorite_item.dart';

part 'favorite_notifier.g.dart';

@riverpod
class FavoriteItemNotifier extends _$FavoriteItemNotifier {
  @override
  FavoriteItem build() {
    return FavoriteItem();
  }

  void addFavoriteItem(FavoriteItem item) {
    state = item;
    print(state);
    ref.read(favoriteListNotifierProvider.notifier).addList(item);
  }
}

@Riverpod(keepAlive: true)
class FavoriteListNotifier extends _$FavoriteListNotifier {
  @override
  List<FavoriteItem> build() {
    return [];
  }

// お気に入りアイテムをリストに追加
  void addList(FavoriteItem item) {
    state = [...state, item];
    print(state);
  }

  bool isFavoriteListed(String id) => state.any((item) => item.id == id);

  void removeListById(String itemIdToRemove) {
    // List.fromを使用してstateのコピーを作成し、削除操作を実行します。
    final List<FavoriteItem> updatedList =
    state.where((item) => item.id != itemIdToRemove).toList();
    state = updatedList;
    print(state);
  }
}
