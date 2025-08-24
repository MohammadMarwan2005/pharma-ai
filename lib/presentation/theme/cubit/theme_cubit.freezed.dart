// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState()';
}


}

/// @nodoc
class $ThemeStateCopyWith<$Res>  {
$ThemeStateCopyWith(ThemeState _, $Res Function(ThemeState) __);
}


/// Adds pattern-matching-related methods to [ThemeState].
extension ThemeStatePatterns on ThemeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ThemeInitial value)?  initial,TResult Function( _ThemeLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemeInitial() when initial != null:
return initial(_that);case _ThemeLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ThemeInitial value)  initial,required TResult Function( _ThemeLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case _ThemeInitial():
return initial(_that);case _ThemeLoaded():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ThemeInitial value)?  initial,TResult? Function( _ThemeLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case _ThemeInitial() when initial != null:
return initial(_that);case _ThemeLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( CubitTheme? theme)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemeInitial() when initial != null:
return initial();case _ThemeLoaded() when loaded != null:
return loaded(_that.theme);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( CubitTheme? theme)  loaded,}) {final _that = this;
switch (_that) {
case _ThemeInitial():
return initial();case _ThemeLoaded():
return loaded(_that.theme);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( CubitTheme? theme)?  loaded,}) {final _that = this;
switch (_that) {
case _ThemeInitial() when initial != null:
return initial();case _ThemeLoaded() when loaded != null:
return loaded(_that.theme);case _:
  return null;

}
}

}

/// @nodoc


class _ThemeInitial implements ThemeState {
  const _ThemeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeState.initial()';
}


}




/// @nodoc


class _ThemeLoaded implements ThemeState {
  const _ThemeLoaded({this.theme});
  

 final  CubitTheme? theme;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeLoadedCopyWith<_ThemeLoaded> get copyWith => __$ThemeLoadedCopyWithImpl<_ThemeLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeLoaded&&(identical(other.theme, theme) || other.theme == theme));
}


@override
int get hashCode => Object.hash(runtimeType,theme);

@override
String toString() {
  return 'ThemeState.loaded(theme: $theme)';
}


}

/// @nodoc
abstract mixin class _$ThemeLoadedCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeLoadedCopyWith(_ThemeLoaded value, $Res Function(_ThemeLoaded) _then) = __$ThemeLoadedCopyWithImpl;
@useResult
$Res call({
 CubitTheme? theme
});




}
/// @nodoc
class __$ThemeLoadedCopyWithImpl<$Res>
    implements _$ThemeLoadedCopyWith<$Res> {
  __$ThemeLoadedCopyWithImpl(this._self, this._then);

  final _ThemeLoaded _self;
  final $Res Function(_ThemeLoaded) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? theme = freezed,}) {
  return _then(_ThemeLoaded(
theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as CubitTheme?,
  ));
}


}

// dart format on
