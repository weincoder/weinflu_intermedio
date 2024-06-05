part of 'shopping_bloc.dart';

@immutable
sealed class ShoppingEvent {
  const ShoppingEvent();
}

class LoadListEvent extends ShoppingEvent {}

class AddItemEvent extends ShoppingEvent {
  final String item;

  const AddItemEvent({required this.item});
}

class RemoveItemEvent extends ShoppingEvent {
  final int index;

  const RemoveItemEvent({required this.index});
}
