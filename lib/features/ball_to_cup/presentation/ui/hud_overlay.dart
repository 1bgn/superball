import 'package:flutter/material.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../application/shot_service.dart';
import '../../application/state.dart';

class HudOverlay extends StatelessWidget {
  final ShotService shotService;

  const HudOverlay({super.key, required this.shotService});

  @override
  Widget build(BuildContext context) {
    return Watch.builder(builder: (context) {
      final state = shotService.state.value;
      final bounces = state.maybeWhen(
        flying: (floorBounces) => floorBounces,
        orElse: () => 0,
      );

      return Positioned(
        top: 50,
        left: 20,
        child: Column(
          children: [
            Text('Bounces: $bounces/1'),
            if (state is ShotStateAiming) const Text('Drag to aim!'),
            if (state is ShotStateWon) ElevatedButton(
              onPressed: shotService.reset,
              child: const Text('Next Level'),
            ),
          ],
        ),
      );
    });
  }
}
