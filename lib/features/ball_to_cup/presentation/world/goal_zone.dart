import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
class GoalZone extends RectangleComponent with CollisionCallbacks {
  GoalZone({super.position, super.size})
      : super(paint: Paint()..color = const Color(0x00000000)) {
    add(RectangleHitbox());
  }
}