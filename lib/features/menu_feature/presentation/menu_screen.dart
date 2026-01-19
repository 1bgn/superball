import 'package:flutter/material.dart';

import '../../ball_to_cup/presentation/game_screen.dart';
import '../../how_to_play_feature/presentation/how_to_play_screen.dart';
import '../../settings_feature/presentation/settings_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 360),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Superball',
                    style: TextStyle(fontSize: 40, color: Colors.black)),
                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const GameScreen()),
                    );
                  },
                  child: const Text('Играть'),
                ),
                const SizedBox(height: 12),

                OutlinedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SettingsScreen()),
                  ),
                  child: const Text('Настройки'),
                ),
                const SizedBox(height: 12),

                OutlinedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const HowToPlayScreen()),
                  ),
                  child: const Text('Как играть'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}