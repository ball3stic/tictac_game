import 'package:tictac_game/pages/home_page.dart';

bool isMatchEnded = false;

int checkWinner(List<String> XOlist) {
  if (XOlist[0] != '' && XOlist[0] == XOlist[1] && XOlist[0] == XOlist[2]) {
    if (XOlist[0] == 'X') {
      isMatchEnded = true;
      return 1;
    } else if (XOlist[0] == 'O') {
      isMatchEnded = true;
      return 0;
    }
  } else if (XOlist[3] != '' &&
      XOlist[3] == XOlist[4] &&
      XOlist[3] == XOlist[5]) {
    if (XOlist[3] == 'X') {
      isMatchEnded = true;
      return 1;
    } else if (XOlist[3] == 'O') {
      isMatchEnded = true;
      return 0;
    }
  } else if (XOlist[6] != '' &&
      XOlist[6] == XOlist[7] &&
      XOlist[6] == XOlist[8]) {
    if (XOlist[6] == 'X') {
      isMatchEnded = true;
      return 1;
    } else if (XOlist[6] == 'O') {
      isMatchEnded = true;
      return 0;
    }
  } else if (XOlist[2] != '' &&
      XOlist[2] == XOlist[5] &&
      XOlist[2] == XOlist[8]) {
    if (XOlist[2] == 'X') {
      isMatchEnded = true;
      return 1;
    } else if (XOlist[2] == 'O') {
      isMatchEnded = true;
      return 0;
    }
  } else if (XOlist[0] != '' &&
      XOlist[0] == XOlist[3] &&
      XOlist[0] == XOlist[6]) {
    if (XOlist[0] == 'X') {
      isMatchEnded = true;
      return 1;
    } else if (XOlist[0] == 'O') {
      isMatchEnded = true;
      return 0;
    }
  } else if (XOlist[0] != '' &&
      XOlist[0] == XOlist[4] &&
      XOlist[0] == XOlist[8]) {
    if (XOlist[0] == 'X') {
      isMatchEnded = true;
      return 1;
    } else if (XOlist[0] == 'O') {
      isMatchEnded = true;
      return 0;
    }
  } else if (XOlist[2] != '' &&
      XOlist[2] == XOlist[4] &&
      XOlist[2] == XOlist[6]) {
    if (XOlist[2] == 'X') {
      isMatchEnded = true;
      return 1;
    } else if (XOlist[2] == 'O') {
      isMatchEnded = true;
      return 0;
    }
  } else if (XOlist[1] != '' &&
      XOlist[1] == XOlist[4] &&
      XOlist[1] == XOlist[7]) {
    if (XOlist[1] == 'X') {
      isMatchEnded = true;
      return 1;
    } else if (XOlist[1] == 'O') {
      isMatchEnded = true;
      return 0;
    }
  }

  if (filledBoxes == 9) {
    isMatchEnded = true;
    return 2;
  }
  return 3;
}
