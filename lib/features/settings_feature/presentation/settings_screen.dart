import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool sound = true;
  bool vibration = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Звук'),
            value: sound,
            onChanged: (v) => setState(() => sound = v),
          ),
          SwitchListTile(
            title: const Text('Вибрация'),
            value: vibration,
            onChanged: (v) => setState(() => vibration = v),
          ),
        ],
      ),
    );
  }
}
