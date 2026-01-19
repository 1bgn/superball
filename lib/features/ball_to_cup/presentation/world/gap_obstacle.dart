import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
class GapObstacle extends RectangleComponent with CollisionCallbacks {
  GapObstacle({super.position, super.size})
      : super(paint: Paint()..color = const Color(0xFFFFAA00)) {
    add(RectangleHitbox());
  }

  Vector2 normalAt(Vector2 p) {
    final c = absoluteCenter;
    final d = p - c;
    if (d.x.abs() > d.y.abs()) {
      return Vector2(d.x >= 0 ? 1 : -1, 0);
    } else {
      return Vector2(0, d.y >= 0 ? 1 : -1);
    }
  }
}