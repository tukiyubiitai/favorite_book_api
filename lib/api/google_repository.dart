import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/book.dart';

// これにより、WishlistRepositoryのインスタンスをアプリケーション全体で再利用できます。
final googleRepositoryProvider = Provider.family<GoogleRepository, String>(
      (_, googleApiKey) => GoogleRepository(googleApiKey),
);

class GoogleRepository {
  GoogleRepository(this.googleApiKey);

  final String googleApiKey;
  int currentPage = 1; // 現在のページ番号を追跡する変数

  String defaultWord = "本";

  // baseUrlにはAPIのベースURLを指定し、共通のクエリパラメータとしてapplicationIdを設定します。
  Dio get _client => Dio(
    BaseOptions(
      baseUrl: "https://www.googleapis.com/books/",
      queryParameters: {"key": googleApiKey},
    ),
  );

  // 書籍データを非同期に取得するメソッドを定義します。
  // Dioクライアントを使用して、指定された条件で書籍の検索を行います。
  Future<List<GoogleBook>> getBooks(
      {int page = 10, String keyWord = "人気"}) async {
    // APIからデータを取得します。リクエストパラメータには、キーワードやソート条件などを指定しています。
    final result = await _client
        .get("v1/volumes?q=$keyWord&orderBy=newest&maxResults=$page");

    // 取得したデータから"Items"キーに対応する部分を抽出し、List<dynamic>型として取り出します。
    final List<dynamic> items = result.data["items"];

    // 抽出した各アイテムをBookオブジェクトに変換し、List<Book>として返します。
    // ここで、itemMap['Item']をMap<String, dynamic>型にキャストして、fromJsonコンストラクタに渡しています。
    return items
        .map<GoogleBook>(
            (itemMap) => GoogleBook.fromJson(itemMap as Map<String, dynamic>))
        .toList();
  }

  // 追加データ取得処理
  Future<List<GoogleBook>> loadMoreBooks() async {
    currentPage++; // ページ番号を増やす
    return getBooks(page: currentPage); // 更新されたページ番号でAPIを呼び出す
  }

  // 検索データ取得処理
  Future<List<GoogleBook>> searchBooks(String keyWords) async {
    return getBooks(keyWord: keyWords); // キーワードでAPIを呼び出す
  }
}
