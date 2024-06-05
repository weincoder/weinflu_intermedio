import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShoppingListProvider extends StateNotifier<List<String>> {
  ShoppingListProvider(super.state);
  void addItem(String newItem) {
    state = [...state, newItem];
  }

  void removeItem(int index) {
    state = [...state]..removeAt(index);
  }
}

final myShoppingListProvider =
    StateNotifierProvider<ShoppingListProvider, List<String>>((ref) {
  return ShoppingListProvider([]);
});
