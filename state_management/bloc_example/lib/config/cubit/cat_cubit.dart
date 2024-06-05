import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'cat_state.dart';

class CatCubit extends Cubit<CatState> {
  CatCubit()
      : super(const CatInitial(
            image: 'assets/images/cat-sleep', action: 'dormir'));

  void updateCat({required String image, required String action}) {
    emit(CatState.update(image: image, action: action));
  }
}
