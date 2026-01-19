import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
class WallSegment extends RectangleComponent with CollisionCallbacks {
  WallSegment({super.position, super.size})
      : super(paint: Paint()..color = const Color(0xFF5555FF)) {
    add(RectangleHitbox());
  }

  Vector2 normalAt(Vector2 _) => Vector2(0, 1);
}