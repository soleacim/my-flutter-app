import 'package:flutter/material.dart';
import 'package:first_app_flutter/game/game.dart';

class GameOverOverlay extends StatelessWidget {
  SurvivalGame game;

  GameOverOverlay({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        title: const Text('Game Over'),
        content: const Text('Vous avez perdu ! Voulez-vous réessayer ?'),
        actions: [
          TextButton(
            onPressed: () {
              game.restart();
            },
            child: const Text('Réessayer'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Quitter'),
          ),
        ],
      ),
    );
  }
}