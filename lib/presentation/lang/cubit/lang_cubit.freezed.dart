// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lang_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LangState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangState()';
}


}

/// @nodoc
class $LangStateCopyWith<$Res>  {
$LangStateCopyWith(LangState _, $Res Function(LangState) __);
}


/// Adds pattern-matching-related methods to [LangState].
extension LangStatePatterns on LangState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LangInitial value)?  initial,TResult Function( LangLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LangInitial() when initial != null:
return initial(_that);case LangLoaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LangInitial value)  initial,required TResult Function( LangLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case LangInitial():
return initial(_that);case LangLoaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LangInitial value)?  initial,TResult? Function( LangLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case LangInitial() when initial != null:
return initial(_that);case LangLoaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String? lang)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LangInitial() when initial != null:
return initial();case LangLoaded() when loaded != null:
return loaded(_that.lang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String? lang)  loaded,}) {final _that = this;
switch (_that) {
case LangInitial():
return initial();case LangLoaded():
return loaded(_that.lang);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String? lang)?  loaded,}) {final _that = this;
switch (_that) {
case LangInitial() when initial != null:
return initial();case LangLoaded() when loaded != null:
return loaded(_that.lang);case _:
  return null;

}
}

}

/// @nodoc


class LangInitial implements LangState {
  const LangInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LangState.initial()';
}


}




/// @nodoc


class LangLoaded implements LangState {
  const LangLoaded({required this.lang});
  

 final  String? lang;

/// Create a copy of LangState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LangLoadedCopyWith<LangLoaded> get copyWith => _$LangLoadedCopyWithImpl<LangLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LangLoaded&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,lang);

@override
String toString() {
  return 'LangState.loaded(lang: $lang)';
}


}

/// @nodoc
abstract mixin class $LangLoadedCopyWith<$Res> implements $LangStateCopyWith<$Res> {
  factory $LangLoadedCopyWith(LangLoaded value, $Res Function(LangLoaded) _then) = _$LangLoadedCopyWithImpl;
@useResult
$Res call({
 String? lang
});




}
/// @nodoc
class _$LangLoadedCopyWithImpl<$Res>
    implements $LangLoadedCopyWith<$Res> {
  _$LangLoadedCopyWithImpl(this._self, this._then);

  final LangLoaded _self;
  final $Res Function(LangLoaded) _then;

/// Create a copy of LangState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lang = freezed,}) {
  return _then(LangLoaded(
lang: freezed == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
