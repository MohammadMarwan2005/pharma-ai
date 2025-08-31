// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_summary_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderSummaryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSummaryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderSummaryState()';
}


}

/// @nodoc
class $OrderSummaryStateCopyWith<$Res>  {
$OrderSummaryStateCopyWith(OrderSummaryState _, $Res Function(OrderSummaryState) __);
}


/// Adds pattern-matching-related methods to [OrderSummaryState].
extension OrderSummaryStatePatterns on OrderSummaryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<OrderSummaryItem> currentItems)?  success,TResult Function( DomainError error,   Function() onTryAgain)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.currentItems);case _Error() when error != null:
return error(_that.error,_that.onTryAgain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<OrderSummaryItem> currentItems)  success,required TResult Function( DomainError error,   Function() onTryAgain)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Success():
return success(_that.currentItems);case _Error():
return error(_that.error,_that.onTryAgain);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<OrderSummaryItem> currentItems)?  success,TResult? Function( DomainError error,   Function() onTryAgain)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.currentItems);case _Error() when error != null:
return error(_that.error,_that.onTryAgain);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements OrderSummaryState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderSummaryState.loading()';
}


}




/// @nodoc


class _Success implements OrderSummaryState {
  const _Success(final  List<OrderSummaryItem> currentItems): _currentItems = currentItems;
  

 final  List<OrderSummaryItem> _currentItems;
 List<OrderSummaryItem> get currentItems {
  if (_currentItems is EqualUnmodifiableListView) return _currentItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentItems);
}


/// Create a copy of OrderSummaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._currentItems, _currentItems));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currentItems));

@override
String toString() {
  return 'OrderSummaryState.success(currentItems: $currentItems)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $OrderSummaryStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 List<OrderSummaryItem> currentItems
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of OrderSummaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentItems = null,}) {
  return _then(_Success(
null == currentItems ? _self._currentItems : currentItems // ignore: cast_nullable_to_non_nullable
as List<OrderSummaryItem>,
  ));
}


}

/// @nodoc


class _Error implements OrderSummaryState {
  const _Error(this.error, this.onTryAgain);
  

 final  DomainError error;
 final   Function() onTryAgain;

/// Create a copy of OrderSummaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error)&&(identical(other.onTryAgain, onTryAgain) || other.onTryAgain == onTryAgain));
}


@override
int get hashCode => Object.hash(runtimeType,error,onTryAgain);

@override
String toString() {
  return 'OrderSummaryState.error(error: $error, onTryAgain: $onTryAgain)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $OrderSummaryStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 DomainError error,  Function() onTryAgain
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of OrderSummaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? onTryAgain = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DomainError,null == onTryAgain ? _self.onTryAgain : onTryAgain // ignore: cast_nullable_to_non_nullable
as  Function(),
  ));
}


}

// dart format on
