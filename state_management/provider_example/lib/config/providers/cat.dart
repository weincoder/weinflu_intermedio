import 'package:flutter/material.dart';

class CatProvider with ChangeNotifier {
  static const initialPath = 'assets/images/';
  String currentImageCat = '${initialPath}cat-eat.png';
  String currentAction = 'comiendo';

  void catEat() {
    currentImageCat = '${initialPath}cat-eat.png';
    currentAction = 'comiendo';
    notifyListeners();
  }

  void catSleep() {
    currentImageCat = '${initialPath}cat-sleep.png';
    currentAction = 'durmiendo';
    notifyListeners();
  }

  void catJump() {
    currentImageCat = '${initialPath}cat-jump.png';
    currentAction = 'saltando';
    notifyListeners();
  }

  void catRunning() {
    currentImageCat = '${initialPath}cat-running.png';
    currentAction = 'corriendo';
    notifyListeners();
  }

  void catPlay() {
    currentImageCat = '${initialPath}cat-play.png';
    currentAction = 'jugando';
    notifyListeners();
  }
}
