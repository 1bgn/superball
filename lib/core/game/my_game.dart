import 'package:flame/game.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:injectable/injectable.dart';
// import '../../features/ball_to_cup/presentation/world/level_world.dart';
import '../../features/ball_to_cup/application/shot_service.dart';
import '../../features/ball_to_cup/application/level_service.dart';

// @injectable
// class MyGame extends Forge2DGame {
//   late final RouterComponent router;
//   final ShotService shotService;
//   final LevelService levelService;
//
//   MyGame({required this.shotService, required this.levelService});
//
//   @override
//   Future<void> onLoad() async {
//     router = RouterComponent(
//       initialRoute: 'level',
//       routes: {
//         'level': Route(() => LevelWorld(shotService, levelService)),
//       },
//     );
//     add(router);
//   }
// }
