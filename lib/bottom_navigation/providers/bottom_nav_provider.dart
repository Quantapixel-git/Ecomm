import 'package:ecom/features/wislist/views/wislist_screen.dart';
import 'package:ecom/route/screen_export.dart';
import 'package:flutter/material.dart';

class BottomNavProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  final List<Widget> _pages = const [
    HomeScreen(),
    WislistScreen(),
    // EmptyCartScreen(), // if Cart is empty
    CartScreen(),
    ProfileScreen(),
  ];

  int get selectedIndex => _selectedIndex;
  List<Widget> get pages => _pages;

  void updatenavIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
