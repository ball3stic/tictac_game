import 'package:flutter/material.dart';
import 'package:tictac_game/functions/createPlayer.dart';

Turn turn = Turn();
bool isTurnX = true;

class Turn {
  String turnIsFor = "";
  Widget setTurn(Player player) {
    turnIsFor = player.playerName;
    return Padding(
      padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
      child: Container(
        decoration: BoxDecoration(
            color: player.playerColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(66, 66, 66, 1),
                blurRadius: 3,
                offset: Offset(0, 2),
              )
            ]),
        height: 60,
        child: Center(
          child: Text(
            'Turn for Player ${player.playerName}',
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
