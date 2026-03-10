// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CubitTheme? theme) loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CubitTheme? theme)? loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CubitTheme? theme)? loaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeInitial value) initial,
    required TResult Function(_ThemeLoaded value) loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeInitial value)? initial,
    TResult? Function(_ThemeLoaded value)? loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeInitial value)? initial,
    TResult Function(_ThemeLoaded value)? loaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
    ThemeState value,
    $Res Function(ThemeState) then,
  ) = _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ThemeInitialImplCopyWith<$Res> {
  factory _$$ThemeInitialImplCopyWith(
    _$ThemeInitialImpl value,
    $Res Function(_$ThemeInitialImpl) then,
  ) = __$$ThemeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeInitialImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeInitialImpl>
    implements _$$ThemeInitialImplCopyWith<$Res> {
  __$$ThemeInitialImplCopyWithImpl(
    _$ThemeInitialImpl _value,
    $Res Function(_$ThemeInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ThemeInitialImpl implements _ThemeInitial {
  const _$ThemeInitialImpl();

  @override
  String toString() {
    return 'ThemeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CubitTheme? theme) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CubitTheme? theme)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CubitTheme? theme)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeInitial value) initial,
    required TResult Function(_ThemeLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeInitial value)? initial,
    TResult? Function(_ThemeLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeInitial value)? initial,
    TResult Function(_ThemeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ThemeInitial implements ThemeState {
  const factory _ThemeInitial() = _$ThemeInitialImpl;
}

/// @nodoc
abstract class _$$ThemeLoadedImplCopyWith<$Res> {
  factory _$$ThemeLoadedImplCopyWith(
    _$ThemeLoadedImpl value,
    $Res Function(_$ThemeLoadedImpl) then,
  ) = __$$ThemeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CubitTheme? theme});
}

/// @nodoc
class __$$ThemeLoadedImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeLoadedImpl>
    implements _$$ThemeLoadedImplCopyWith<$Res> {
  __$$ThemeLoadedImplCopyWithImpl(
    _$ThemeLoadedImpl _value,
    $Res Function(_$ThemeLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? theme = freezed}) {
    return _then(
      _$ThemeLoadedImpl(
        theme:
            freezed == theme
                ? _value.theme
                : theme // ignore: cast_nullable_to_non_nullable
                    as CubitTheme?,
      ),
    );
  }
}

/// @nodoc

class _$ThemeLoadedImpl implements _ThemeLoaded {
  const _$ThemeLoadedImpl({this.theme});

  @override
  final CubitTheme? theme;

  @override
  String toString() {
    return 'ThemeState.loaded(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeLoadedImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeLoadedImplCopyWith<_$ThemeLoadedImpl> get copyWith =>
      __$$ThemeLoadedImplCopyWithImpl<_$ThemeLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CubitTheme? theme) loaded,
  }) {
    return loaded(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CubitTheme? theme)? loaded,
  }) {
    return loaded?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CubitTheme? theme)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeInitial value) initial,
    required TResult Function(_ThemeLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeInitial value)? initial,
    TResult? Function(_ThemeLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeInitial value)? initial,
    TResult Function(_ThemeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ThemeLoaded implements ThemeState {
  const factory _ThemeLoaded({final CubitTheme? theme}) = _$ThemeLoadedImpl;

  CubitTheme? get theme;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeLoadedImplCopyWith<_$ThemeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
