import 'package:flutter/material.dart';

class HowToPlayScreen extends StatelessWidget {
  const HowToPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Как играть')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          '1) Зажми шар.\n'
              '2) Проведи пальцем — это направление полёта.\n'
              '3) Отпусти — шар полетит.\n'
              'Цель: попасть в проём, используя рикошеты.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
