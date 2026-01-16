import 'package:flame_forge2d/flame_forge2d.dart';

class CupSensorBody extends BodyComponent {
  @override
  Body createBody() {
    final bd = BodyDef(
      type: BodyType.static,
      position: Vector2(12, 8),
      userData: this,
    );

    final body = world.createBody(bd);
    final shape = PolygonShape()..setAsBoxXY(0.8, 0.6);

    body.createFixture(FixtureDef(shape)..isSensor = true);
    return body;
  }
}
