// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lang_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LangState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? lang) loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? lang)? loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? lang)? loaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LangInitial value) initial,
    required TResult Function(LangLoaded value) loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LangInitial value)? initial,
    TResult? Function(LangLoaded value)? loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LangInitial value)? initial,
    TResult Function(LangLoaded value)? loaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangStateCopyWith<$Res> {
  factory $LangStateCopyWith(LangState value, $Res Function(LangState) then) =
      _$LangStateCopyWithImpl<$Res, LangState>;
}

/// @nodoc
class _$LangStateCopyWithImpl<$Res, $Val extends LangState>
    implements $LangStateCopyWith<$Res> {
  _$LangStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LangState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LangInitialImplCopyWith<$Res> {
  factory _$$LangInitialImplCopyWith(
    _$LangInitialImpl value,
    $Res Function(_$LangInitialImpl) then,
  ) = __$$LangInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LangInitialImplCopyWithImpl<$Res>
    extends _$LangStateCopyWithImpl<$Res, _$LangInitialImpl>
    implements _$$LangInitialImplCopyWith<$Res> {
  __$$LangInitialImplCopyWithImpl(
    _$LangInitialImpl _value,
    $Res Function(_$LangInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LangState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LangInitialImpl implements LangInitial {
  const _$LangInitialImpl();

  @override
  String toString() {
    return 'LangState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LangInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? lang) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? lang)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? lang)? loaded,
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
    required TResult Function(LangInitial value) initial,
    required TResult Function(LangLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LangInitial value)? initial,
    TResult? Function(LangLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LangInitial value)? initial,
    TResult Function(LangLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LangInitial implements LangState {
  const factory LangInitial() = _$LangInitialImpl;
}

/// @nodoc
abstract class _$$LangLoadedImplCopyWith<$Res> {
  factory _$$LangLoadedImplCopyWith(
    _$LangLoadedImpl value,
    $Res Function(_$LangLoadedImpl) then,
  ) = __$$LangLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? lang});
}

/// @nodoc
class __$$LangLoadedImplCopyWithImpl<$Res>
    extends _$LangStateCopyWithImpl<$Res, _$LangLoadedImpl>
    implements _$$LangLoadedImplCopyWith<$Res> {
  __$$LangLoadedImplCopyWithImpl(
    _$LangLoadedImpl _value,
    $Res Function(_$LangLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LangState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lang = freezed}) {
    return _then(
      _$LangLoadedImpl(
        lang:
            freezed == lang
                ? _value.lang
                : lang // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$LangLoadedImpl implements LangLoaded {
  const _$LangLoadedImpl({required this.lang});

  @override
  final String? lang;

  @override
  String toString() {
    return 'LangState.loaded(lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LangLoadedImpl &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lang);

  /// Create a copy of LangState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LangLoadedImplCopyWith<_$LangLoadedImpl> get copyWith =>
      __$$LangLoadedImplCopyWithImpl<_$LangLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? lang) loaded,
  }) {
    return loaded(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? lang)? loaded,
  }) {
    return loaded?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? lang)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LangInitial value) initial,
    required TResult Function(LangLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LangInitial value)? initial,
    TResult? Function(LangLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LangInitial value)? initial,
    TResult Function(LangLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LangLoaded implements LangState {
  const factory LangLoaded({required final String? lang}) = _$LangLoadedImpl;

  String? get lang;

  /// Create a copy of LangState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LangLoadedImplCopyWith<_$LangLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
