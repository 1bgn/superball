import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:superball/features/win_screen/presentation/win_screen.dart';
import 'features/ball_to_cup/presentation/world/ricochet_game.dart';
import 'features/menu_feature/presentation/menu_screen.dart';

void main() {
  final game = RicochetGame();

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MenuScreen(),
    );
  }
}