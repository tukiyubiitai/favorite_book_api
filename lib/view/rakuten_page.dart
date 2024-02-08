import 'package:favorite_book_app/provider/booklist_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/favorite_item.dart';
import '../provider/favorite_notifier.dart';

class RakutenPage extends ConsumerStatefulWidget {
  const RakutenPage({super.key});

  @override
  ConsumerState<RakutenPage> createState() => _RakutenPageState();
}

class _RakutenPageState extends ConsumerState<RakutenPage> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      ref.watch(rakutenListAsyncNotifierProvider.notifier).loadMoreBooks();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    ref.watch(favoriteItemNotifierProvider.notifier);
    final state = ref.watch(rakutenListAsyncNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Rakuten Books"),
        // actions: [
        //   IconButton(
        //     onPressed: _searchPage,
        //     icon: Icon(
        //       Icons.search_rounded,
        //       color: Colors.blue,
        //       size: 40,
        //     ),
        //   ),
        // ],
        // leading: IconButton(
        //   onPressed: () {
        //     _scrollController.animateTo(
        //       0, // スクロール位置を0に設定（最上部）
        //       duration: Duration(seconds: 1), // アニメーションの時間
        //       curve: Curves.easeOut, // アニメーションのカーブ
        //     );
        //   },
        //   icon: Icon(
        //     Icons.arrow_upward_sharp,
        //     color: Colors.redAccent,
        //     size: 30,
        //   ),
        // ),
      ),
      body: state.when(
        error: (e, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Problem loading books"),
              SizedBox(
                height: 10,
              ),
              OutlinedButton(
                  onPressed: () {
                    //再読み込み
                    ref
                        .read(rakutenListAsyncNotifierProvider.notifier)
                        .reloadBooks();
                  },
                  child: Text("Try again"))
            ],
          ),
        ),
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        data: (data) => GridView.builder(
          controller: _scrollController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: data.books.length,
          itemBuilder: (context, index) {
            final book = data.books[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      book.imageUrl,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.grey,
                          ],
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          data.books[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: InkWell(
                        onTap: () {
                          ref.read(favoriteListNotifierProvider.notifier).addList(
                            FavoriteItem(
                              title: book.title,
                              imageUrl: book.imageUrl,
                              id: book.id,
                              source:
                              "Rakuten", // 例: "Google Books", "Open Library"など
                            ),
                          );
                          final vm =
                          ref.read(rakutenListAsyncNotifierProvider.notifier);
                          if (vm.isWishlisted(book.id)) {
                            vm.removeFromWishlist(book.id);
                          } else {
                            vm.addToWishlist(book);
                          }
                        },
                        child: Align(
                          child: Icon(
                            Icons.favorite,
                            color: data.wishlist.contains(book.id)
                                ? Colors.redAccent
                                : Colors.black38,
                            size: 50,
                          ),
                        ),
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
