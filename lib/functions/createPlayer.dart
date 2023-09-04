import 'package:flutter/material.dart';

class Player {
  // Constructor for Player.
  Player(this.playerName, this.playerColor, this.playerScore);

  // Player Infromation
  final String playerName;
  final Color playerColor;
  int playerScore;

  Widget createPlayer() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Player',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(width: 5),
            Text(
              this.playerName,
              style: TextStyle(
                color: playerColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
        Text(
          this.playerScore.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
