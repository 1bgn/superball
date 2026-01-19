import 'package:injectable/injectable.dart';
import 'package:signals/signals.dart';
import 'state.dart'; // Убрал дублирующий import

@lazySingleton
class ShotService {
  final _state = signal<ShotState>(const ShotState.idle());
  ReadonlySignal<ShotState> get state => _state.readonly();

  bool get canStrike => _state.value == const ShotState.idle() ||
      _state.value == const ShotState.aiming();

  void startAim() {
    if (!canStrike) return;
    _state.value = const ShotState.aiming();
  }

  void launched() {
    _state.value = const ShotState.flying(floorBounces: 0);
  }

  void onFloorBounce() {
    final s = _state.value;
    s.maybeWhen(
      flying: (floorBounces) {
        _state.value = ShotState.flying(floorBounces: floorBounces + 1);
      },
      orElse: () {},
    );
  }

  void onCupEntered() {
    final s = _state.value;
    s.maybeWhen(
      flying: (floorBounces) {
        if (floorBounces >= 1) {
          _state.value = const ShotState.won();
        }
      },
      orElse: () {},
    );
  }

  void reset() => _state.value = const ShotState.idle();
}
