import 'package:favorite_book_app/api/rakuten_repository.dart';
import 'package:favorite_book_app/models/book.dart';
import 'package:favorite_book_app/models/booklist_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api/google_repository.dart';
import '../api_key.dart';

part 'booklist_notifier.g.dart';

@riverpod
class RakutenListAsyncNotifier extends _$RakutenListAsyncNotifier {
  //api呼び出し
  RakutenRepository get _api => ref.read(rakutenRepositoryProvider(ApplicationId));

  //buildメソッドは、AsyncNotifierの状態を初期化するために使用されます。
  // ここでは、書籍データの読み込みを行い、その結果を状態として設定します。検索
  @override
  Future<RakutenListState> build() => _loadBooks();

  Future<RakutenListState> _loadBooks() async {
    final response = await _api.getBooks();
    return RakutenListState(books: response);
  }

  // 書籍データを再読み込みするメソッドです。読み込み状態をprogressに設定してから、書籍データの読み込みを開始します。
  Future<void> reloadBooks() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _loadBooks());
  }

  // 追加データ取得
  Future<void> loadMoreBooks() async {
    try {
      //新しい値をnewBooks
      final newBooks = await _api.loadMoreBooks();
      if (newBooks.isEmpty) {
        // 新しい書籍データがない場合の処理
        return;
      }

      //既存のデータをcurrentStateに
      final currentState = state.value;
      if (currentState != null) {
        //既存のリストのコピー作成し、新しいリストに追加
        final updatedBooks = List<RakutenBook>.from(currentState.books)
          ..addAll(newBooks);
        state = AsyncValue.data(currentState.copyWith(books: updatedBooks));
      } else {
        // 何らかの理由で現在の状態がnullの場合は、新しいデータのみを設定します。
        state = AsyncValue.data(RakutenListState(books: newBooks));
      }
    } catch (e) {
      // エラー処理
      print(e);
    }
  }

  //addToWishlistメソッドは、指定されたIDの書籍をウィッシュリストに追加します。
  void addToWishlist(RakutenBook book) {
    state = AsyncValue.data(state.value!.copyWith(
      wishlist: {...state.value!.wishlist, book.id},
    ));
  }

  //isWishlistedメソッドは、指定されたIDの書籍がウィッシュリストに含まれているかどうかを判定します。
  bool isWishlisted(String id) => state.value!.wishlist.contains(id);

  //removeFromWishlistメソッドは、指定されたIDの書籍をウィッシュリストから削除します。
  void removeFromWishlist(String id) {
    try {
      // 変更可能なセットのコピーを作成
      final Set<String> newWishlist = Set.from(state.value!.wishlist);
      // コピーに対して要素を削除
      newWishlist.remove(id);
      // 状態を更新
      state = AsyncValue.data(state.value!.copyWith(
        wishlist: newWishlist,
      ));
    } catch (e) {
      print(e);
    }
  }

  Future<void> searchBooks(String keyWords) async {
    try {
      final books = await _api.searchBooks(keyWords);
      // 現在の状態を取得（お気に入りリストを保持）
      final currentState = state.value;
      if (currentState != null) {
        // 既存のお気に入りリストを保持しながら、検索結果を書籍リストに追加
        state = AsyncValue.data(RakutenListState(
          books: books,
          wishlist: currentState.wishlist, // お気に入りリストを維持
        ));
      } else {
        // 現在の状態がnullの場合（通常はあり得ないが、安全のため）
        state = AsyncValue.data(RakutenListState(books: books));
      }
    } catch (e) {
      print(e);
    }
  }
}

@riverpod
class GoogleListAsyncNotifier extends _$GoogleListAsyncNotifier {
  //api呼び出し
  GoogleRepository get _api => ref.read(googleRepositoryProvider(googleApiKey));

  //buildメソッドは、AsyncNotifierの状態を初期化するために使用されます。
  // ここでは、書籍データの読み込みを行い、その結果を状態として設定します。検索
  @override
  Future<GoogleListState> build() => _loadBooks();

  Future<GoogleListState> _loadBooks() async {
    final response = await _api.getBooks();
    return GoogleListState(books: response);
  }

  // 書籍データを再読み込みするメソッドです。読み込み状態をprogressに設定してから、書籍データの読み込みを開始します。
  Future<void> reloadBooks() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _loadBooks());
  }

  // 追加データ取得
  Future<void> loadMoreBooks() async {
    try {
      //新しい値をnewBooks
      final newBooks = await _api.loadMoreBooks();
      if (newBooks.isEmpty) {
        // 新しい書籍データがない場合の処理
        return;
      }

      //既存のデータをcurrentStateに
      final currentState = state.value;
      if (currentState != null) {
        //既存のリストのコピー作成し、新しいリストに追加
        final updatedBooks = List<GoogleBook>.from(currentState.books)
          ..addAll(newBooks);
        state = AsyncValue.data(currentState.copyWith(books: updatedBooks));
      } else {
        // 何らかの理由で現在の状態がnullの場合は、新しいデータのみを設定します。
        state = AsyncValue.data(GoogleListState(books: newBooks));
      }
    } catch (e) {
      // エラー処理
      print(e);
    }
  }

  //addToWishlistメソッドは、指定されたIDの書籍をウィッシュリストに追加します。
  void addToWishlist(GoogleBook book) {
    state = AsyncValue.data(state.value!.copyWith(
      wishlist: {...state.value!.wishlist, book.id},
    ));
  }

  // void addToFavoriteList(Book book) {
  //   final favoriteItem = FavoriteItem(
  //     title: book.title,
  //     imageUrl: book.imageUrl,
  //     id: book.id,
  //     source: "楽天API", // 例: "Google Books", "Open Library"など
  //   );
  //   //book.id, book.title, book.imageUrl
  //   ref
  //       .read(favoriteItemNotifierProvider.notifier)
  //       .addFavoriteItem(favoriteItem);
  // }

  //isWishlistedメソッドは、指定されたIDの書籍がウィッシュリストに含まれているかどうかを判定します。
  bool isGoogleListed(String id) => state.value!.wishlist.contains(id);

  //removeFromWishlistメソッドは、指定されたIDの書籍をウィッシュリストから削除します。
  void removeGoogleList(String id) {
    try {
      // 変更可能なセットのコピーを作成
      final Set<String> newGoogleList = Set.from(state.value!.wishlist);
      // コピーに対して要素を削除
      newGoogleList.remove(id);
      // 状態を更新
      state = AsyncValue.data(state.value!.copyWith(
        wishlist: newGoogleList,
      ));
    } catch (e) {
      print(e);
    }
  }

  Future<void> searchBooks(String keyWords) async {
    try {
      final books = await _api.searchBooks(keyWords);
      // 現在の状態を取得（お気に入りリストを保持）
      final currentState = state.value;
      if (currentState != null) {
        // 既存のお気に入りリストを保持しながら、検索結果を書籍リストに追加
        state = AsyncValue.data(GoogleListState(
          books: books,
          wishlist: currentState.wishlist, // お気に入りリストを維持
        ));
      } else {
        // 現在の状態がnullの場合（通常はあり得ないが、安全のため）
        state = AsyncValue.data(GoogleListState(books: books));
      }
    } catch (e) {
      print(e);
    }
  }
}