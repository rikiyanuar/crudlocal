// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'general_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeneralStateTearOff {
  const _$GeneralStateTearOff();

  _GeneralSuccessState success() {
    return const _GeneralSuccessState();
  }

  _GeneralClientErrorState clientError() {
    return const _GeneralClientErrorState();
  }

  _GeneralServerErrorState serverError() {
    return const _GeneralServerErrorState();
  }

  _GeneralNetworkErrorState networkError() {
    return const _GeneralNetworkErrorState();
  }
}

/// @nodoc
const $GeneralState = _$GeneralStateTearOff();

/// @nodoc
mixin _$GeneralState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GeneralSuccessState value) success,
    required TResult Function(_GeneralClientErrorState value) clientError,
    required TResult Function(_GeneralServerErrorState value) serverError,
    required TResult Function(_GeneralNetworkErrorState value) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralStateCopyWith<$Res> {
  factory $GeneralStateCopyWith(
          GeneralState value, $Res Function(GeneralState) then) =
      _$GeneralStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeneralStateCopyWithImpl<$Res> implements $GeneralStateCopyWith<$Res> {
  _$GeneralStateCopyWithImpl(this._value, this._then);

  final GeneralState _value;
  // ignore: unused_field
  final $Res Function(GeneralState) _then;
}

/// @nodoc
abstract class _$GeneralSuccessStateCopyWith<$Res> {
  factory _$GeneralSuccessStateCopyWith(_GeneralSuccessState value,
          $Res Function(_GeneralSuccessState) then) =
      __$GeneralSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$GeneralSuccessStateCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res>
    implements _$GeneralSuccessStateCopyWith<$Res> {
  __$GeneralSuccessStateCopyWithImpl(
      _GeneralSuccessState _value, $Res Function(_GeneralSuccessState) _then)
      : super(_value, (v) => _then(v as _GeneralSuccessState));

  @override
  _GeneralSuccessState get _value => super._value as _GeneralSuccessState;
}

/// @nodoc

class _$_GeneralSuccessState implements _GeneralSuccessState {
  const _$_GeneralSuccessState();

  @override
  String toString() {
    return 'GeneralState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GeneralSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GeneralSuccessState value) success,
    required TResult Function(_GeneralClientErrorState value) clientError,
    required TResult Function(_GeneralServerErrorState value) serverError,
    required TResult Function(_GeneralNetworkErrorState value) networkError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GeneralSuccessState implements GeneralState {
  const factory _GeneralSuccessState() = _$_GeneralSuccessState;
}

/// @nodoc
abstract class _$GeneralClientErrorStateCopyWith<$Res> {
  factory _$GeneralClientErrorStateCopyWith(_GeneralClientErrorState value,
          $Res Function(_GeneralClientErrorState) then) =
      __$GeneralClientErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$GeneralClientErrorStateCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res>
    implements _$GeneralClientErrorStateCopyWith<$Res> {
  __$GeneralClientErrorStateCopyWithImpl(_GeneralClientErrorState _value,
      $Res Function(_GeneralClientErrorState) _then)
      : super(_value, (v) => _then(v as _GeneralClientErrorState));

  @override
  _GeneralClientErrorState get _value =>
      super._value as _GeneralClientErrorState;
}

/// @nodoc

class _$_GeneralClientErrorState implements _GeneralClientErrorState {
  const _$_GeneralClientErrorState();

  @override
  String toString() {
    return 'GeneralState.clientError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GeneralClientErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
  }) {
    return clientError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
  }) {
    return clientError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GeneralSuccessState value) success,
    required TResult Function(_GeneralClientErrorState value) clientError,
    required TResult Function(_GeneralServerErrorState value) serverError,
    required TResult Function(_GeneralNetworkErrorState value) networkError,
  }) {
    return clientError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
  }) {
    return clientError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(this);
    }
    return orElse();
  }
}

abstract class _GeneralClientErrorState implements GeneralState {
  const factory _GeneralClientErrorState() = _$_GeneralClientErrorState;
}

/// @nodoc
abstract class _$GeneralServerErrorStateCopyWith<$Res> {
  factory _$GeneralServerErrorStateCopyWith(_GeneralServerErrorState value,
          $Res Function(_GeneralServerErrorState) then) =
      __$GeneralServerErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$GeneralServerErrorStateCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res>
    implements _$GeneralServerErrorStateCopyWith<$Res> {
  __$GeneralServerErrorStateCopyWithImpl(_GeneralServerErrorState _value,
      $Res Function(_GeneralServerErrorState) _then)
      : super(_value, (v) => _then(v as _GeneralServerErrorState));

  @override
  _GeneralServerErrorState get _value =>
      super._value as _GeneralServerErrorState;
}

/// @nodoc

class _$_GeneralServerErrorState implements _GeneralServerErrorState {
  const _$_GeneralServerErrorState();

  @override
  String toString() {
    return 'GeneralState.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GeneralServerErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GeneralSuccessState value) success,
    required TResult Function(_GeneralClientErrorState value) clientError,
    required TResult Function(_GeneralServerErrorState value) serverError,
    required TResult Function(_GeneralNetworkErrorState value) networkError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _GeneralServerErrorState implements GeneralState {
  const factory _GeneralServerErrorState() = _$_GeneralServerErrorState;
}

/// @nodoc
abstract class _$GeneralNetworkErrorStateCopyWith<$Res> {
  factory _$GeneralNetworkErrorStateCopyWith(_GeneralNetworkErrorState value,
          $Res Function(_GeneralNetworkErrorState) then) =
      __$GeneralNetworkErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$GeneralNetworkErrorStateCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res>
    implements _$GeneralNetworkErrorStateCopyWith<$Res> {
  __$GeneralNetworkErrorStateCopyWithImpl(_GeneralNetworkErrorState _value,
      $Res Function(_GeneralNetworkErrorState) _then)
      : super(_value, (v) => _then(v as _GeneralNetworkErrorState));

  @override
  _GeneralNetworkErrorState get _value =>
      super._value as _GeneralNetworkErrorState;
}

/// @nodoc

class _$_GeneralNetworkErrorState implements _GeneralNetworkErrorState {
  const _$_GeneralNetworkErrorState();

  @override
  String toString() {
    return 'GeneralState.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeneralNetworkErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() networkError,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GeneralSuccessState value) success,
    required TResult Function(_GeneralClientErrorState value) clientError,
    required TResult Function(_GeneralServerErrorState value) serverError,
    required TResult Function(_GeneralNetworkErrorState value) networkError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GeneralSuccessState value)? success,
    TResult Function(_GeneralClientErrorState value)? clientError,
    TResult Function(_GeneralServerErrorState value)? serverError,
    TResult Function(_GeneralNetworkErrorState value)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _GeneralNetworkErrorState implements GeneralState {
  const factory _GeneralNetworkErrorState() = _$_GeneralNetworkErrorState;
}
