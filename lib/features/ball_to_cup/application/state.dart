import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@freezed
class ShotState with _$ShotState {
  const factory ShotState.idle() = ShotStateIdle;
  const factory ShotState.aiming() = ShotStateAiming;
  const factory ShotState.flying({required int floorBounces}) = ShotStateFlying;
  const factory ShotState.won() = ShotStateWon;
  const factory ShotState.lost() = ShotStateLost;
}
