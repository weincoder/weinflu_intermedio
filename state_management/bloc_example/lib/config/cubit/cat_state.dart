part of 'cat_cubit.dart';

@immutable
sealed class CatState {
  final String image;
  final String action;
  const CatState({required this.image, required this.action});
  factory CatState.initial() =>
      const CatInitial(image: 'assets/images/cat-eat.png', action: 'comiendo');
  factory CatState.update({required String image, required String action}) =>
      CatUpdate(image: image, action: action);
  get catImage => image;
  get catAction => action;
}

final class CatInitial extends CatState {
  const CatInitial({required String image, required String action})
      : super(
          image: 'assets/images/cat-eat.png',
          action: 'comiendo',
        );
}

final class CatUpdate extends CatState {
  const CatUpdate({required super.image, required super.action});
}
