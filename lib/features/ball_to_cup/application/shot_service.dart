import 'package:injectable/injectable.dart';
import 'package:signals/signals.dart';
import 'state.dart';

@lazySingleton
class ShotService {
  final state = signal<ShotState>(const ShotState.idle());

  bool get canStrike => state.value is _Idle || state.value is _Aiming;

  void startAim() {
    if (!canStrike) return;
    state.value = const ShotState.aiming();
  }

  void launched() {
    state.value = const ShotState.flying(floorBounces: 0);
  }

  void onFloorBounce() {
    final s = state.value;
    if (s is _Flying) {
      state.value = ShotState.flying(floorBounces: s.floorBounces + 1);
    }
  }

  void onCupEntered() {
    final s = state.value;
    if (s is _Flying && s.floorBounces >= 1) {
      state.value = const ShotState.won();
    }
  }

  void reset() => state.value = const ShotState.idle();
}
