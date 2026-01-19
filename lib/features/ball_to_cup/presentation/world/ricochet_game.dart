import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/text.dart' as g;
import 'package:superball/features/ball_to_cup/presentation/world/wall_segment.dart';

import 'ball.dart';
import 'gap_obstacle.dart';
import 'goal_wall.dart';
import 'goal_zone.dart';

class RicochetGame extends FlameGame with HasCollisionDetection {
  late final Ball ball;
  late final GoalWall goalWall;
  late final TextComponent hud;

  @override
  Color backgroundColor() => const Color(0xFFFFFFFF); // белый фон [web:128]
  void showWinDialog() {
    pauseEngine();
    overlays.add('winDialog');
  }
  void resetRound() {
    ball.reset(size / 2);
    resumeEngine();
  }
  @override
  Future<void> onLoad() async {
    camera.viewfinder.anchor = Anchor.topLeft;

    add(ScreenHitbox());

    ball = Ball(
      r: 10,
      pos: size / 2,
      spritePath: 'ball.png',
    );
    add(ball);

    goalWall = GoalWall(gapWidth: 80, y: 100);
    add(goalWall);

    hud = TextComponent(
      text: 'Отскок: 0',
      position: Vector2(10, 30),
      priority: 1000,
      textRenderer: TextPaint(
        style:  g.TextStyle(
          color: Color(0xFF000000),
          fontSize: 18,
        ),
      ),
    );
    add(hud);
  }

  @override
  void update(double dt) {
    super.update(dt);
    hud.text = 'Отскок: ${ball.ricochets}';
  }
}



