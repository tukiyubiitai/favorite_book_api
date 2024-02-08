import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/favorite_item.dart';
import '../provider/booklist_notifier.dart';
import '../provider/favorite_notifier.dart';

class GooglePage extends ConsumerWidget {
  const GooglePage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    ref.watch(favoriteItemNotifierProvider.notifier);
    final favoriteList = ref.watch(favoriteListNotifierProvider);

    final state = ref.watch(googleListAsyncNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("google books api"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: Colors.blue,
              size: 40,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            // _scrollController.animateTo(
            //   0, // スクロール位置を0に設定（最上部）
            //   duration: Duration(seconds: 1), // アニメーションの時間
            //   curve: Curves.easeOut, // アニメーションのカーブ
            // );
          },
          icon: Icon(
            Icons.arrow_upward_sharp,
            color: Colors.redAccent,
            size: 30,
          ),
        ),
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
                    // ref
                    //     .read(wishlistAsyncNotifierProvider.notifier)
                    //     .reloadBooks();
                  },
                  child: Text("Try again"))
            ],
          ),
        ),
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        data: (data) => GridView.builder(
          // controller: _scrollController,
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
                    child: book.volumeInfo.imageLinks?.thumbnail != null
                        ? Image.network(
                      book.volumeInfo.imageLinks!.thumbnail.toString(),
                      fit: BoxFit.fitHeight,
                    )
                        : Icon(Icons.image, size: 100.0), // サイズは適宜調整してください
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
                          data.books[index].volumeInfo.title,
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
                          final vm =
                          ref.read(favoriteListNotifierProvider.notifier);

                          if (vm.isFavoriteListed(book.id)) {
                            vm.removeListById(book.id);
                          } else {
                            vm.addList(
                              FavoriteItem(
                                title: book.volumeInfo.title,
                                imageUrl: book.volumeInfo.imageLinks!.thumbnail
                                    .toString(),
                                id: book.id,
                                source:
                                "Google", // 例: "Google Books", "Open Library"など
                              ),
                            );
                          }
                        },
                        child: Align(
                          child: Icon(
                            Icons.favorite,
                            color: ref
                                .watch(favoriteListNotifierProvider.notifier)
                                .isFavoriteListed(book.id)
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
      floatingActionButton: state.value == null
          ? null
          : Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: FloatingActionButton(
              onPressed: () {},
              tooltip: "View Wishlist",
              child: const Icon(Icons.auto_fix_high_outlined),
            ),
          ),
          //wishlistが存在する時だけ表示
          if (favoriteList.isNotEmpty == true)
            Positioned(
              right: -4,
              bottom: 40,
              child: CircleAvatar(
                backgroundColor: Colors.tealAccent,
                radius: 12,
                child: Text(
                  favoriteList.length.toString(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
