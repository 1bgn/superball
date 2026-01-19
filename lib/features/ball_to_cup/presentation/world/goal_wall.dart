import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:superball/features/ball_to_cup/presentation/world/ricochet_game.dart';
import 'package:superball/features/ball_to_cup/presentation/world/wall_segment.dart';

import 'gap_obstacle.dart';
import 'goal_zone.dart';
class GoalWall extends PositionComponent with HasGameRef<RicochetGame> {
  final double gapWidth;
  final double y;

  GoalWall({required this.gapWidth, required this.y});

  @override
  Future<void> onLoad() async {
    size = Vector2(gameRef.size.x, 20);
    position = Vector2(0, y);

    final totalWidth = gameRef.size.x;
    final gapX = (totalWidth - gapWidth) / 2;

    add(WallSegment(position: Vector2(0, 0), size: Vector2(gapX, 20)));
    add(WallSegment(
      position: Vector2(gapX + gapWidth, 0),
      size: Vector2(totalWidth - (gapX + gapWidth), 20),
    ));

    add(GoalZone(position: Vector2(gapX, 0), size: Vector2(gapWidth, 20)));

    const obstacleH = 18.0;
    final obstacleW = gapWidth * 0.70;

    add(GapObstacle(
      position: Vector2(
        gapX + gapWidth / 2 - obstacleW / 2,
        20 + 100,
      ),
      size: Vector2(obstacleW, obstacleH),
    ));
  }
}
