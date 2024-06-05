part of 'shopping_bloc.dart';

@immutable
sealed class ShoppingState {
  final List<String> items;
  const ShoppingState({required this.items});
}

class InitialListState extends ShoppingState {
  const InitialListState({required super.items});
}

class LoadingListState extends ShoppingState {
  const LoadingListState({required super.items});
}

class LoadedListState extends ShoppingState {
  const LoadedListState({required super.items});
  List<String> get shoppingList => items;
}

class ErrorListState extends ShoppingState {
  final String error;

  const ErrorListState({required this.error, required super.items});
}
