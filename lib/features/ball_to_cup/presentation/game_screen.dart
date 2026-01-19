import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:superball/features/ball_to_cup/presentation/world/ricochet_game.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late final RicochetGame game;

  @override
  void initState() {
    super.initState();
    game = RicochetGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GameWidget(
          game: game,
          overlayBuilderMap: {
            'winScreen': (context, RicochetGame game) {
              return Material(
                color: Colors.white,
                child: SafeArea(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Победа', style: TextStyle(fontSize: 40)),
                        const SizedBox(height: 12),
                        Text('Отскоков: ${game.ball.ricochets}'),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            game.overlays.remove('winScreen');
                            game.restartRound();
                          },
                          child: const Text('Сыграть снова'),
                        ),
                        const SizedBox(height: 12),
                        OutlinedButton(
                          onPressed: () => Navigator.pop(context), // обратно в меню-экран
                          child: const Text('Вернуться в меню'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          },
        ),
      ),
    );
  }
}
