import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/game/game.dart';

import 'components/game_over_overlay.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  static MaterialPageRoute route() {
    return MaterialPageRoute<void>(
      builder: (_) => const GamePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GameWidget<SurvivalGame>.controlled(
      gameFactory: SurvivalGame.new,

      overlayBuilderMap: {
        'GameOver': (context, game) {
          return GameOverOverlay(game: game);
        },
      },
    );
  }
}
