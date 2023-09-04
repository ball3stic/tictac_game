import 'package:tictac_game/functions/createPlayer.dart';
import 'package:tictac_game/pages/home_page.dart';

void resetGame(List<Player> players, List<String> XOlist,
    {bool clearScore = false}) {
  if (clearScore) {
    // Reset players score.
    for (var i = 0; i < players.length; i++) {
      players[i].playerScore = 0;
    }
  }

  // Reset XOlist
  for (var i = 0; i < XOlist.length; i++) {
    XOlist[i] = '';
  }

  // Reset FilledBoxes
  filledBoxes = 0;
}
