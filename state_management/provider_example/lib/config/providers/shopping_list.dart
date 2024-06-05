import 'package:flutter/material.dart';

class ShoppingListProvider with ChangeNotifier {
  List<String> items = [];

  void addItem(String newItem) {
    items.add(newItem);
    notifyListeners();
  }

  void removeItem(int index) {
    items.removeAt(index);
    notifyListeners();
  }
}
