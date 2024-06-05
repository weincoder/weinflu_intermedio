import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'shopping_event.dart';
part 'shopping_state.dart';

class ShoppingBloc extends Bloc<ShoppingEvent, ShoppingState> {
  final List<String> initialList = [];
  ShoppingBloc() : super(InitialListState(items: List.empty())) {
    on<LoadListEvent>(onLoadListEvent);
    on<AddItemEvent>(onAddItemEvent);
    on<RemoveItemEvent>(onRemoveItemEvent);
  }

  get items => initialList;

  void onLoadListEvent(LoadListEvent event, Emitter<ShoppingState> emit) async {
    emit(const LoadingListState(items: []));
    final List<String> items = [];

    emit(LoadedListState(items: items));
  }

  void onAddItemEvent(AddItemEvent event, Emitter<ShoppingState> emit) {
    items.add(event.item);

    emit(LoadedListState(items: items));
  }

  void onRemoveItemEvent(RemoveItemEvent event, Emitter<ShoppingState> emit) {
    items.removeAt(event.index);

    emit(LoadedListState(items: items));
  }
}
