// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShotState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShotState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShotState()';
}


}

/// @nodoc
class $ShotStateCopyWith<$Res>  {
$ShotStateCopyWith(ShotState _, $Res Function(ShotState) __);
}


/// Adds pattern-matching-related methods to [ShotState].
extension ShotStatePatterns on ShotState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ShotStateIdle value)?  idle,TResult Function( ShotStateAiming value)?  aiming,TResult Function( ShotStateFlying value)?  flying,TResult Function( ShotStateWon value)?  won,TResult Function( ShotStateLost value)?  lost,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ShotStateIdle() when idle != null:
return idle(_that);case ShotStateAiming() when aiming != null:
return aiming(_that);case ShotStateFlying() when flying != null:
return flying(_that);case ShotStateWon() when won != null:
return won(_that);case ShotStateLost() when lost != null:
return lost(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ShotStateIdle value)  idle,required TResult Function( ShotStateAiming value)  aiming,required TResult Function( ShotStateFlying value)  flying,required TResult Function( ShotStateWon value)  won,required TResult Function( ShotStateLost value)  lost,}){
final _that = this;
switch (_that) {
case ShotStateIdle():
return idle(_that);case ShotStateAiming():
return aiming(_that);case ShotStateFlying():
return flying(_that);case ShotStateWon():
return won(_that);case ShotStateLost():
return lost(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ShotStateIdle value)?  idle,TResult? Function( ShotStateAiming value)?  aiming,TResult? Function( ShotStateFlying value)?  flying,TResult? Function( ShotStateWon value)?  won,TResult? Function( ShotStateLost value)?  lost,}){
final _that = this;
switch (_that) {
case ShotStateIdle() when idle != null:
return idle(_that);case ShotStateAiming() when aiming != null:
return aiming(_that);case ShotStateFlying() when flying != null:
return flying(_that);case ShotStateWon() when won != null:
return won(_that);case ShotStateLost() when lost != null:
return lost(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  aiming,TResult Function( int floorBounces)?  flying,TResult Function()?  won,TResult Function()?  lost,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ShotStateIdle() when idle != null:
return idle();case ShotStateAiming() when aiming != null:
return aiming();case ShotStateFlying() when flying != null:
return flying(_that.floorBounces);case ShotStateWon() when won != null:
return won();case ShotStateLost() when lost != null:
return lost();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  aiming,required TResult Function( int floorBounces)  flying,required TResult Function()  won,required TResult Function()  lost,}) {final _that = this;
switch (_that) {
case ShotStateIdle():
return idle();case ShotStateAiming():
return aiming();case ShotStateFlying():
return flying(_that.floorBounces);case ShotStateWon():
return won();case ShotStateLost():
return lost();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  aiming,TResult? Function( int floorBounces)?  flying,TResult? Function()?  won,TResult? Function()?  lost,}) {final _that = this;
switch (_that) {
case ShotStateIdle() when idle != null:
return idle();case ShotStateAiming() when aiming != null:
return aiming();case ShotStateFlying() when flying != null:
return flying(_that.floorBounces);case ShotStateWon() when won != null:
return won();case ShotStateLost() when lost != null:
return lost();case _:
  return null;

}
}

}

/// @nodoc


class ShotStateIdle implements ShotState {
  const ShotStateIdle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShotStateIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShotState.idle()';
}


}




/// @nodoc


class ShotStateAiming implements ShotState {
  const ShotStateAiming();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShotStateAiming);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShotState.aiming()';
}


}




/// @nodoc


class ShotStateFlying implements ShotState {
  const ShotStateFlying({required this.floorBounces});
  

 final  int floorBounces;

/// Create a copy of ShotState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShotStateFlyingCopyWith<ShotStateFlying> get copyWith => _$ShotStateFlyingCopyWithImpl<ShotStateFlying>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShotStateFlying&&(identical(other.floorBounces, floorBounces) || other.floorBounces == floorBounces));
}


@override
int get hashCode => Object.hash(runtimeType,floorBounces);

@override
String toString() {
  return 'ShotState.flying(floorBounces: $floorBounces)';
}


}

/// @nodoc
abstract mixin class $ShotStateFlyingCopyWith<$Res> implements $ShotStateCopyWith<$Res> {
  factory $ShotStateFlyingCopyWith(ShotStateFlying value, $Res Function(ShotStateFlying) _then) = _$ShotStateFlyingCopyWithImpl;
@useResult
$Res call({
 int floorBounces
});




}
/// @nodoc
class _$ShotStateFlyingCopyWithImpl<$Res>
    implements $ShotStateFlyingCopyWith<$Res> {
  _$ShotStateFlyingCopyWithImpl(this._self, this._then);

  final ShotStateFlying _self;
  final $Res Function(ShotStateFlying) _then;

/// Create a copy of ShotState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? floorBounces = null,}) {
  return _then(ShotStateFlying(
floorBounces: null == floorBounces ? _self.floorBounces : floorBounces // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ShotStateWon implements ShotState {
  const ShotStateWon();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShotStateWon);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShotState.won()';
}


}




/// @nodoc


class ShotStateLost implements ShotState {
  const ShotStateLost();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShotStateLost);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShotState.lost()';
}


}




// dart format on
