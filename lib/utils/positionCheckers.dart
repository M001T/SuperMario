import 'dart:math';

class PositionChecker {
  static int checkIfAteMushroom(
      marioX, mushroomX, marioY, mushroomY, marioSize) {
    if (sqrt(pow(marioX - mushroomX, 2) + pow(marioY - mushroomY, 2)) < 0.05) {
      return marioSize = 100;
    }
  }

  // void checkPoint() {
  //   if (sqrt(pow(marioX - endFieldX, 2) + pow(marioY - endFieldY, 2)) < 0.05) {
  //     setState(() {
  //       print('deu certo');
  //     });
  //   }
  // }
}
