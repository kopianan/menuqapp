import 'package:feroza/domain/scan/menu.dart';
import 'package:flutter/material.dart';

class ScanProvider with ChangeNotifier {
  MenuData _menuData;
  int _selectedIndex = 0;

  void setMenuData(MenuData menu) {
    this._menuData = menu;
    notifyListeners();
  }

  MenuData get getMenuData => this._menuData;
  List<MenuPhotos> get getMenuPhotos =>
      this._menuData.categories[_selectedIndex].menuPhotos;
      
  void setSelectedIndex(int index) {
    this._selectedIndex = index;
    notifyListeners();
  }

  int get getSelectedIndex => this._selectedIndex;
}
