import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:superball/features/ball_to_cup/presentation/world/ricochet_game.dart';
import 'package:superball/features/ball_to_cup/presentation/world/wall_segment.dart';

import 'gap_obstacle.dart';
import 'goal_zone.dart';

enum BallState { idle, aiming, flying }

class Ball extends SpriteComponent
    with CollisionCallbacks, DragCallbacks, HasGameRef<RicochetGame> {
  Ball({
    required double r,
    required this.spritePath,
    Vector2? pos,
  })  : _r = r,
        super(
        size: Vector2.all(r * 2),
        position: pos,
        anchor: Anchor.center,
      );

  final double _r;
  final String spritePath;

  BallState state = BallState.idle;
  Vector2 velocity = Vector2.zero();
  int ricochets = 0;

  Vector2 _swipe = Vector2.zero();
  Vector2 _lockedPos = Vector2.zero();

  static const double _launchSpeed = 650.0;
  static const double _minSwipe = 12.0;

  static const double _dampingPerSecond = 0.5;
  static const double _stopSpeed = 25.0;

  final Paint _aimPaint = Paint()
    ..color = const Color(0xAA000000) // чёрная линия на белом фоне
    ..strokeWidth = 3;

  double get radius => _r;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // PNG из assets [web:134]
    sprite = await Sprite.load(spritePath);

    // Круглый хитбокс поверх спрайта (для коллизий) [web:129]
    add(CircleHitbox.relative(0.5, parentSize: size));
  }

  void reset(Vector2 to) {
    position.setFrom(to);
    velocity = Vector2.zero();
    state = BallState.idle;
    _swipe = Vector2.zero();
    ricochets = 0;
  }

  void _reflect(Vector2 normal) {
    final n = normal.normalized();
    final dot = velocity.dot(n);
    velocity = velocity - n * (2 * dot);
  }

  @override
  void onDragStart(DragStartEvent event) {
    if (state == BallState.flying) return;

    velocity = Vector2.zero();
    state = BallState.aiming;

    _swipe = Vector2.zero();
    _lockedPos = position.clone();

    event.continuePropagation = false;
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    if (state != BallState.aiming) return;
    _swipe += event.localDelta;
  }

  @override
  void onDragEnd(DragEndEvent event) {
    if (state != BallState.aiming) return;

    if (_swipe.length < _minSwipe) {
      state = BallState.idle;
      _swipe = Vector2.zero();
      return;
    }

    velocity = _swipe.normalized() * _launchSpeed;
    state = BallState.flying;
    _swipe = Vector2.zero();
  }

  @override
  void onDragCancel(DragCancelEvent event) {
    state = BallState.idle;
    _swipe = Vector2.zero();
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (state == BallState.aiming) {
      position.setFrom(_lockedPos);
      return;
    }
    if (state != BallState.flying) return;

    position += velocity * dt;

    // Отскоки от краёв экрана
    final s = gameRef.size;

    if (position.x - radius < 0 && velocity.x < 0) {
      position.x = radius;
      velocity.x *= -1;
      ricochets++;
    }
    if (position.x + radius > s.x && velocity.x > 0) {
      position.x = s.x - radius;
      velocity.x *= -1;
      ricochets++;
    }
    if (position.y - radius < 0 && velocity.y < 0) {
      position.y = radius;
      velocity.y *= -1;
      ricochets++;
    }
    if (position.y + radius > s.y && velocity.y > 0) {
      position.y = s.y - radius;
      velocity.y *= -1;
      ricochets++;
    }

    // Затухание
    final factor = math.pow(_dampingPerSecond, dt).toDouble();
    velocity *= factor;

    // Сброс после остановки
    if (velocity.length < _stopSpeed) {
      reset(gameRef.size / 2);
    }
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    if (state == BallState.aiming && _swipe.length >= 1) {
      // у SpriteComponent (0,0) — левый верх спрайта, поэтому стартуем из центра
      final c = Offset(size.x / 2, size.y / 2);
      canvas.drawLine(c, c + Offset(_swipe.x, _swipe.y), _aimPaint);
    }
  }

  @override
  void onCollisionStart(Set<Vector2> points, PositionComponent other) {
    super.onCollisionStart(points, other);

    if (other is WallSegment) {
      _reflect(other.normalAt(points.first));
      ricochets++;
      return;
    }

    if (other is GapObstacle) {
      _reflect(other.normalAt(points.first));
      ricochets++;
      return;
    }

    if (other is GoalZone) {
      velocity = Vector2.zero();
      state = BallState.idle;
      gameRef.showWinScreen();
      return;
    }
  }
}