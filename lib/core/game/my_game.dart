import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flame/router.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import '../../features/ball_to_cup/presentation/world/level_world.dart';

class MyGame extends Forge2DGame {
  late final RouterComponent router;

  MyGame() : super(gravity: Vector2(0, 10));

  @override
  Future<void> onLoad() async {
    router = RouterComponent(
      routes: {
        'level': WorldRoute(LevelWorld.new),
        // 'hud': OverlayRoute.existing(), // если объявите overlay в GameWidget
      },
      initialRoute: 'level',
    );
    add(router);
  }
}
