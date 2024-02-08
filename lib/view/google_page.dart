import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/favorite_item.dart';
import '../provider/booklist_notifier.dart';
import '../provider/favorite_notifier.dart';

class GooglePage extends ConsumerStatefulWidget {
  const GooglePage({super.key});

  @override
  ConsumerState<GooglePage> createState() => _GooglePageState();
}

class _GooglePageState extends ConsumerState<GooglePage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _controller = TextEditingController();


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
  Widget build(BuildContext context,) {
    ref.watch(favoriteItemNotifierProvider.notifier);
    final favoriteList = ref.watch(favoriteListNotifierProvider);

    final state = ref.watch(googleListAsyncNotifierProvider);

    Timer? _debounce;

    void _onSearchChanged(String value) {
      if (_debounce?.isActive ?? false) _debounce!.cancel();
      _debounce = Timer(const Duration(milliseconds: 500), () {
        if (value.isNotEmpty) {
          ref.read(googleListAsyncNotifierProvider.notifier).searchBooks(value);
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("検索ページ"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _controller,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    _onSearchChanged(value);
                  }
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded, color: Colors.blue),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple.shade300),
                    ),
                    labelStyle: const TextStyle(color: Colors.deepPurple)),
              ),
            ),
            state.when(
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
                              .read(googleListAsyncNotifierProvider.notifier)
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
                shrinkWrap: true,
                // ここを追加
                physics: NeverScrollableScrollPhysics(),
                // ここを追加
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
                                final vm = ref
                                    .read(favoriteListNotifierProvider.notifier);
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
                            ),),

                      ],
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
