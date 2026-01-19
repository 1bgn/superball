import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:superball/features/ball_to_cup/presentation/world/ricochet_game.dart';

class WinScreen extends StatelessWidget{
  final RicochetGame game;

  const WinScreen({super.key, required this.game});
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: SafeArea(
     child: Center(
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           const Text(
             'Победа',
             style: TextStyle(fontSize: 36, color: Colors.black),
           ),
           const SizedBox(height: 16),
           Text(
             'Отскоков: ${game.ball.ricochets}',
             style: const TextStyle(fontSize: 18, color: Colors.black),
           ),
           const SizedBox(height: 8),
           Text(
             'Осталось времени: ${game.timeLeft}s',
             style: const TextStyle(fontSize: 18, color: Colors.black),
           ),
           const SizedBox(height: 24),
           ElevatedButton(
             onPressed: () => game.restartRound(),
             child: const Text('Ещё раз'),
           ),
         ],
       ),
     ),
   ),
 );
  }

}