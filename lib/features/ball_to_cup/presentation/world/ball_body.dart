import 'package:flame_forge2d/flame_forge2d.dart';
import '../../application/shot_service.dart';

class BallBody extends BodyComponent with ContactCallbacks {
  BallBody(this.shotService);

  final ShotService shotService;

  @override
  Body createBody() {
    final bd = BodyDef(
      type: BodyType.dynamic,
      position: Vector2(5, 5),
      userData: this,
    );

    final body = world.createBody(bd);
    final shape = CircleShape()..radius = 0.35;

    body.createFixture(
      FixtureDef(shape)
        ..restitution = 0.6
        ..density = 1.0
        ..friction = 0.2,
    );

    return body;
  }

  void strike(Vector2 impulse) {
    if (!shotService.canStrike) return;
    shotService.launched();
    body.applyLinearImpulse(impulse);
  }

  @override
  void beginContact(Object other, Contact contact) {
    if (other is FloorBody) {
      shotService.onFloorBounce();
    }
    if (other is CupSensorBody) {
      shotService.onCupEntered();
    }
  }
}
