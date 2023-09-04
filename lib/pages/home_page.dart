import 'package:flutter/material.dart';
import 'package:tictac_game/functions/checkWinner.dart';
import 'package:tictac_game/functions/createPlayer.dart';
import 'package:tictac_game/functions/Turn.dart';
import 'package:tictac_game/functions/resetGame.dart';

import '../functions/createGrid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int filledBoxes = 0;
String winnerTitle = '';

class _HomePageState extends State<HomePage> {
  MakeGrid grid = MakeGrid();
  Player playerX = Player('X', Colors.green, 0);
  Player playerO = Player('O', Colors.red, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: getAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: getHomeMain(),
        ),
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      title: Text("TicTacToe"),
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              resetGame([playerO, playerX], XOlist, clearScore: true);
            });
          },
          icon: Icon(
            Icons.replay_circle_filled_rounded,
            color: Colors.pink[300],
            size: 25,
          ),
        )
      ],
      backgroundColor: Colors.grey[900],
      centerTitle: true,
    );
  }

  Widget getHomeMain() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            playerX.createPlayer(),
            playerO.createPlayer(),
          ],
        ),
        SizedBox(height: 10),
        Visibility(
          visible: isMatchEnded,
          child: winnerButton(),
        ),
        grid.createGridView(
          onTap: () {
            setState(
              () {
                if (XOlist[grid.userIndex] == '' && !isMatchEnded) {
                  if (isTurnX) {
                    XOlist[grid.userIndex] = 'X';
                    filledBoxes++;
                  } else {
                    XOlist[grid.userIndex] = 'O';
                    filledBoxes++;
                  }
                  isTurnX = !isTurnX;
                }
                if (!isMatchEnded) {
                  if (checkWinner(XOlist) == 1) {
                    playerX.playerScore++;
                    winnerTitle =
                        'Player ${playerX.playerName} Won!, Play again!';
                  }

                  if (checkWinner(XOlist) == 0) {
                    playerO.playerScore++;
                    winnerTitle =
                        'Player ${playerO.playerName} Won!, Play again!';
                  }

                  if (checkWinner(XOlist) == 2) {
                    winnerTitle = 'Draw, Play again!';
                  }
                }
              },
            );
          },
        ),
        isTurnX ? turn.setTurn(playerX) : turn.setTurn(playerO)
      ],
    );
  }

  Widget winnerButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Colors.pink,
        ),
      ),
      onPressed: () {
        setState(() {
          isMatchEnded = false;
          resetGame([playerX, playerO], XOlist);
          winnerTitle = '';
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          winnerTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
