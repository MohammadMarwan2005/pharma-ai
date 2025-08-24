// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_login_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostLoginInstruction {

 String get redirectionRoute; Object? get itsExtras;
/// Create a copy of PostLoginInstruction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostLoginInstructionCopyWith<PostLoginInstruction> get copyWith => _$PostLoginInstructionCopyWithImpl<PostLoginInstruction>(this as PostLoginInstruction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostLoginInstruction&&(identical(other.redirectionRoute, redirectionRoute) || other.redirectionRoute == redirectionRoute)&&const DeepCollectionEquality().equals(other.itsExtras, itsExtras));
}


@override
int get hashCode => Object.hash(runtimeType,redirectionRoute,const DeepCollectionEquality().hash(itsExtras));

@override
String toString() {
  return 'PostLoginInstruction(redirectionRoute: $redirectionRoute, itsExtras: $itsExtras)';
}


}

/// @nodoc
abstract mixin class $PostLoginInstructionCopyWith<$Res>  {
  factory $PostLoginInstructionCopyWith(PostLoginInstruction value, $Res Function(PostLoginInstruction) _then) = _$PostLoginInstructionCopyWithImpl;
@useResult
$Res call({
 String redirectionRoute, Object? itsExtras
});




}
/// @nodoc
class _$PostLoginInstructionCopyWithImpl<$Res>
    implements $PostLoginInstructionCopyWith<$Res> {
  _$PostLoginInstructionCopyWithImpl(this._self, this._then);

  final PostLoginInstruction _self;
  final $Res Function(PostLoginInstruction) _then;

/// Create a copy of PostLoginInstruction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redirectionRoute = null,Object? itsExtras = freezed,}) {
  return _then(_self.copyWith(
redirectionRoute: null == redirectionRoute ? _self.redirectionRoute : redirectionRoute // ignore: cast_nullable_to_non_nullable
as String,itsExtras: freezed == itsExtras ? _self.itsExtras : itsExtras ,
  ));
}

}


/// Adds pattern-matching-related methods to [PostLoginInstruction].
extension PostLoginInstructionPatterns on PostLoginInstruction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostLoginInstruction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostLoginInstruction() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostLoginInstruction value)  $default,){
final _that = this;
switch (_that) {
case _PostLoginInstruction():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostLoginInstruction value)?  $default,){
final _that = this;
switch (_that) {
case _PostLoginInstruction() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String redirectionRoute,  Object? itsExtras)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostLoginInstruction() when $default != null:
return $default(_that.redirectionRoute,_that.itsExtras);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String redirectionRoute,  Object? itsExtras)  $default,) {final _that = this;
switch (_that) {
case _PostLoginInstruction():
return $default(_that.redirectionRoute,_that.itsExtras);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String redirectionRoute,  Object? itsExtras)?  $default,) {final _that = this;
switch (_that) {
case _PostLoginInstruction() when $default != null:
return $default(_that.redirectionRoute,_that.itsExtras);case _:
  return null;

}
}

}

/// @nodoc


class _PostLoginInstruction implements PostLoginInstruction {
   _PostLoginInstruction({required this.redirectionRoute, this.itsExtras});
  

@override final  String redirectionRoute;
@override final  Object? itsExtras;

/// Create a copy of PostLoginInstruction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostLoginInstructionCopyWith<_PostLoginInstruction> get copyWith => __$PostLoginInstructionCopyWithImpl<_PostLoginInstruction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostLoginInstruction&&(identical(other.redirectionRoute, redirectionRoute) || other.redirectionRoute == redirectionRoute)&&const DeepCollectionEquality().equals(other.itsExtras, itsExtras));
}


@override
int get hashCode => Object.hash(runtimeType,redirectionRoute,const DeepCollectionEquality().hash(itsExtras));

@override
String toString() {
  return 'PostLoginInstruction(redirectionRoute: $redirectionRoute, itsExtras: $itsExtras)';
}


}

/// @nodoc
abstract mixin class _$PostLoginInstructionCopyWith<$Res> implements $PostLoginInstructionCopyWith<$Res> {
  factory _$PostLoginInstructionCopyWith(_PostLoginInstruction value, $Res Function(_PostLoginInstruction) _then) = __$PostLoginInstructionCopyWithImpl;
@override @useResult
$Res call({
 String redirectionRoute, Object? itsExtras
});




}
/// @nodoc
class __$PostLoginInstructionCopyWithImpl<$Res>
    implements _$PostLoginInstructionCopyWith<$Res> {
  __$PostLoginInstructionCopyWithImpl(this._self, this._then);

  final _PostLoginInstruction _self;
  final $Res Function(_PostLoginInstruction) _then;

/// Create a copy of PostLoginInstruction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? redirectionRoute = null,Object? itsExtras = freezed,}) {
  return _then(_PostLoginInstruction(
redirectionRoute: null == redirectionRoute ? _self.redirectionRoute : redirectionRoute // ignore: cast_nullable_to_non_nullable
as String,itsExtras: freezed == itsExtras ? _self.itsExtras : itsExtras ,
  ));
}


}

// dart format on
