import 'package:favorite_book_app/view/favorite_page.dart';
import 'package:favorite_book_app/view/google_page.dart';
import 'package:favorite_book_app/view/rakuten_page.dart';
import 'package:flutter/material.dart';



class BottomTabNavigator extends StatefulWidget {
  final int initialIndex; // initialIndexパラメータを追加

  const BottomTabNavigator(
      {super.key, required this.initialIndex}); // コンストラクタにパラメータを追加

  @override
  State<BottomTabNavigator> createState() => _BottomTabNavigatorState();
}

class _BottomTabNavigatorState extends State<BottomTabNavigator> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _screens = [
  const  FavoritePage(),
    const RakutenPage(),
  const  GooglePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.indigo[900],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'rakuten'),
          BottomNavigationBarItem(icon: Icon(Icons.book_online), label: 'google'),

        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
