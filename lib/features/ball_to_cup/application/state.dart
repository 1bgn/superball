import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@freezed
sealed class ShotState with _$ShotState {
  const factory ShotState.idle() = _Idle;
  const factory ShotState.aiming() = _Aiming;
  const factory ShotState.flying({required int floorBounces}) = _Flying;
  const factory ShotState.won() = _Won;
  const factory ShotState.lost() = _Lost;
}
