import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'core/di/di.dart';
import 'core/game/my_game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(GameWidget(game: getIt<MyGame>()));
}
