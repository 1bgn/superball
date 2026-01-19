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

// + добавь импорт
import 'package:flame/components.dart';

class RicochetGame extends FlameGame with HasCollisionDetection {
  late final Ball ball;
  late final GoalWall goalWall;
  late final TextComponent hud;

  // Таймер
  static const int roundSeconds = 30;
  int timeLeft = roundSeconds;
  late final TimerComponent roundTimer;

  @override
  Color backgroundColor() => const Color(0xFFFFFFFF);

  @override
  Future<void> onLoad() async {
    camera.viewfinder.anchor = Anchor.topLeft;
    add(ScreenHitbox());

    ball = Ball(r: 10, pos: size / 2, spritePath: 'ball.png');
    add(ball);

    goalWall = GoalWall(gapWidth: 80, y: 100);
    add(goalWall);

    hud = TextComponent(
      text: '',
      position: Vector2(10, 30),
      priority: 1000,
      textRenderer: TextPaint(
        style: g. TextStyle(color: Color(0xFF000000), fontSize: 18),
      ),
    );
    add(hud);

    roundTimer = TimerComponent(
      period: 1,
      repeat: true,
      onTick: () {
        if (paused) return;
        timeLeft--;
        if (timeLeft <= 0) {
          restartRound(); // таймаут -> перезапуск
        }
      },
    );
    add(roundTimer);

    restartRound();
  }

  void showWinScreen() {
    pauseEngine();
    overlays.add('winScreen');
  }

  void restartRound() {
    overlays.remove('winScreen');
    timeLeft = roundSeconds;
    ball.reset(size / 2);
    resumeEngine();
  }

  @override
  void update(double dt) {
    super.update(dt);
    hud.text = 'Отскок: ${ball.ricochets}   Осталось времени: ${timeLeft}s';
  }
}
