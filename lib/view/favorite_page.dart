import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/favorite_notifier.dart';

class FavoritePage extends ConsumerWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final favoriteList = ref.watch(favoriteListNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("FavoriteList"),
      ),
      body: favoriteList.isEmpty
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("お気に入りリストが空です"),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("本を追加して下さい"))
          ],
        ),
      )
          : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: favoriteList.length,
        itemBuilder: (context, index) {
          final book = favoriteList[index];
          print(book);
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
                        favoriteList[index].title,
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
                    onTap: () {},
                    child: Align(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(10)),
                    color: book.source == "Google"
                        ? Colors.indigo
                        : book.source == "Rakuten"
                        ? Colors.red
                        : Colors.grey, // 条件に応じた色の設定
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 8),
                    child: Text(
                      book.source,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
