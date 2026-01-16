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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Idle value)?  idle,TResult Function( _Aiming value)?  aiming,TResult Function( _Flying value)?  flying,TResult Function( _Won value)?  won,TResult Function( _Lost value)?  lost,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle(_that);case _Aiming() when aiming != null:
return aiming(_that);case _Flying() when flying != null:
return flying(_that);case _Won() when won != null:
return won(_that);case _Lost() when lost != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Idle value)  idle,required TResult Function( _Aiming value)  aiming,required TResult Function( _Flying value)  flying,required TResult Function( _Won value)  won,required TResult Function( _Lost value)  lost,}){
final _that = this;
switch (_that) {
case _Idle():
return idle(_that);case _Aiming():
return aiming(_that);case _Flying():
return flying(_that);case _Won():
return won(_that);case _Lost():
return lost(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Idle value)?  idle,TResult? Function( _Aiming value)?  aiming,TResult? Function( _Flying value)?  flying,TResult? Function( _Won value)?  won,TResult? Function( _Lost value)?  lost,}){
final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle(_that);case _Aiming() when aiming != null:
return aiming(_that);case _Flying() when flying != null:
return flying(_that);case _Won() when won != null:
return won(_that);case _Lost() when lost != null:
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
case _Idle() when idle != null:
return idle();case _Aiming() when aiming != null:
return aiming();case _Flying() when flying != null:
return flying(_that.floorBounces);case _Won() when won != null:
return won();case _Lost() when lost != null:
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
case _Idle():
return idle();case _Aiming():
return aiming();case _Flying():
return flying(_that.floorBounces);case _Won():
return won();case _Lost():
return lost();}
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
case _Idle() when idle != null:
return idle();case _Aiming() when aiming != null:
return aiming();case _Flying() when flying != null:
return flying(_that.floorBounces);case _Won() when won != null:
return won();case _Lost() when lost != null:
return lost();case _:
  return null;

}
}

}

/// @nodoc


class _Idle implements ShotState {
  const _Idle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Idle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShotState.idle()';
}


}




/// @nodoc


class _Aiming implements ShotState {
  const _Aiming();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Aiming);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShotState.aiming()';
}


}




/// @nodoc


class _Flying implements ShotState {
  const _Flying({required this.floorBounces});
  

 final  int floorBounces;

/// Create a copy of ShotState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlyingCopyWith<_Flying> get copyWith => __$FlyingCopyWithImpl<_Flying>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Flying&&(identical(other.floorBounces, floorBounces) || other.floorBounces == floorBounces));
}


@override
int get hashCode => Object.hash(runtimeType,floorBounces);

@override
String toString() {
  return 'ShotState.flying(floorBounces: $floorBounces)';
}


}

/// @nodoc
abstract mixin class _$FlyingCopyWith<$Res> implements $ShotStateCopyWith<$Res> {
  factory _$FlyingCopyWith(_Flying value, $Res Function(_Flying) _then) = __$FlyingCopyWithImpl;
@useResult
$Res call({
 int floorBounces
});




}
/// @nodoc
class __$FlyingCopyWithImpl<$Res>
    implements _$FlyingCopyWith<$Res> {
  __$FlyingCopyWithImpl(this._self, this._then);

  final _Flying _self;
  final $Res Function(_Flying) _then;

/// Create a copy of ShotState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? floorBounces = null,}) {
  return _then(_Flying(
floorBounces: null == floorBounces ? _self.floorBounces : floorBounces // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Won implements ShotState {
  const _Won();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Won);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShotState.won()';
}


}




/// @nodoc


class _Lost implements ShotState {
  const _Lost();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lost);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShotState.lost()';
}


}




// dart format on
