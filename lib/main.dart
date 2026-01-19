import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'features/ball_to_cup/presentation/world/ricochet_game.dart';

void main() {
  final game = RicochetGame();

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GameWidget(
          game: game,
          overlayBuilderMap: {
            'winDialog': (context, RicochetGame game) => Center(
              child: AlertDialog(
                title: const Text('Победа'),
                content: Text('Ricochets: ${game.ball.ricochets}'),
                actions: [
                  TextButton(
                    onPressed: () {
                      game.overlays.remove('winDialog');
                      game.resetRound();
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          },
        ),
      ),
    ),
  );
}
