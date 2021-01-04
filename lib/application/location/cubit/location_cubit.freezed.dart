// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _OnLoading onLoading() {
    return const _OnLoading();
  }

// ignore: unused_element
  _OnError onError(String message) {
    return _OnError(
      message,
    );
  }

// ignore: unused_element
  _OnSuccess onSuccess(List<Placemark> position) {
    return _OnSuccess(
      position,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onLoading(),
    @required TResult onError(String message),
    @required TResult onSuccess(List<Placemark> position),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onLoading(),
    TResult onError(String message),
    TResult onSuccess(List<Placemark> position),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onLoading(_OnLoading value),
    @required TResult onError(_OnError value),
    @required TResult onSuccess(_OnSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onLoading(_OnLoading value),
    TResult onError(_OnError value),
    TResult onSuccess(_OnSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onLoading(),
    @required TResult onError(String message),
    @required TResult onSuccess(List<Placemark> position),
  }) {
    assert(initial != null);
    assert(onLoading != null);
    assert(onError != null);
    assert(onSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onLoading(),
    TResult onError(String message),
    TResult onSuccess(List<Placemark> position),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onLoading(_OnLoading value),
    @required TResult onError(_OnError value),
    @required TResult onSuccess(_OnSuccess value),
  }) {
    assert(initial != null);
    assert(onLoading != null);
    assert(onError != null);
    assert(onSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onLoading(_OnLoading value),
    TResult onError(_OnError value),
    TResult onSuccess(_OnSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$OnLoadingCopyWith<$Res> {
  factory _$OnLoadingCopyWith(
          _OnLoading value, $Res Function(_OnLoading) then) =
      __$OnLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnLoadingCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$OnLoadingCopyWith<$Res> {
  __$OnLoadingCopyWithImpl(_OnLoading _value, $Res Function(_OnLoading) _then)
      : super(_value, (v) => _then(v as _OnLoading));

  @override
  _OnLoading get _value => super._value as _OnLoading;
}

/// @nodoc
class _$_OnLoading implements _OnLoading {
  const _$_OnLoading();

  @override
  String toString() {
    return 'LocationState.onLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onLoading(),
    @required TResult onError(String message),
    @required TResult onSuccess(List<Placemark> position),
  }) {
    assert(initial != null);
    assert(onLoading != null);
    assert(onError != null);
    assert(onSuccess != null);
    return onLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onLoading(),
    TResult onError(String message),
    TResult onSuccess(List<Placemark> position),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onLoading != null) {
      return onLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onLoading(_OnLoading value),
    @required TResult onError(_OnError value),
    @required TResult onSuccess(_OnSuccess value),
  }) {
    assert(initial != null);
    assert(onLoading != null);
    assert(onError != null);
    assert(onSuccess != null);
    return onLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onLoading(_OnLoading value),
    TResult onError(_OnError value),
    TResult onSuccess(_OnSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onLoading != null) {
      return onLoading(this);
    }
    return orElse();
  }
}

abstract class _OnLoading implements LocationState {
  const factory _OnLoading() = _$_OnLoading;
}

/// @nodoc
abstract class _$OnErrorCopyWith<$Res> {
  factory _$OnErrorCopyWith(_OnError value, $Res Function(_OnError) then) =
      __$OnErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$OnErrorCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$OnErrorCopyWith<$Res> {
  __$OnErrorCopyWithImpl(_OnError _value, $Res Function(_OnError) _then)
      : super(_value, (v) => _then(v as _OnError));

  @override
  _OnError get _value => super._value as _OnError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_OnError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_OnError implements _OnError {
  const _$_OnError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'LocationState.onError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$OnErrorCopyWith<_OnError> get copyWith =>
      __$OnErrorCopyWithImpl<_OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onLoading(),
    @required TResult onError(String message),
    @required TResult onSuccess(List<Placemark> position),
  }) {
    assert(initial != null);
    assert(onLoading != null);
    assert(onError != null);
    assert(onSuccess != null);
    return onError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onLoading(),
    TResult onError(String message),
    TResult onSuccess(List<Placemark> position),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onError != null) {
      return onError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onLoading(_OnLoading value),
    @required TResult onError(_OnError value),
    @required TResult onSuccess(_OnSuccess value),
  }) {
    assert(initial != null);
    assert(onLoading != null);
    assert(onError != null);
    assert(onSuccess != null);
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onLoading(_OnLoading value),
    TResult onError(_OnError value),
    TResult onSuccess(_OnSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements LocationState {
  const factory _OnError(String message) = _$_OnError;

  String get message;
  _$OnErrorCopyWith<_OnError> get copyWith;
}

/// @nodoc
abstract class _$OnSuccessCopyWith<$Res> {
  factory _$OnSuccessCopyWith(
          _OnSuccess value, $Res Function(_OnSuccess) then) =
      __$OnSuccessCopyWithImpl<$Res>;
  $Res call({List<Placemark> position});
}

/// @nodoc
class __$OnSuccessCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$OnSuccessCopyWith<$Res> {
  __$OnSuccessCopyWithImpl(_OnSuccess _value, $Res Function(_OnSuccess) _then)
      : super(_value, (v) => _then(v as _OnSuccess));

  @override
  _OnSuccess get _value => super._value as _OnSuccess;

  @override
  $Res call({
    Object position = freezed,
  }) {
    return _then(_OnSuccess(
      position == freezed ? _value.position : position as List<Placemark>,
    ));
  }
}

/// @nodoc
class _$_OnSuccess implements _OnSuccess {
  const _$_OnSuccess(this.position) : assert(position != null);

  @override
  final List<Placemark> position;

  @override
  String toString() {
    return 'LocationState.onSuccess(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSuccess &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @override
  _$OnSuccessCopyWith<_OnSuccess> get copyWith =>
      __$OnSuccessCopyWithImpl<_OnSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult onLoading(),
    @required TResult onError(String message),
    @required TResult onSuccess(List<Placemark> position),
  }) {
    assert(initial != null);
    assert(onLoading != null);
    assert(onError != null);
    assert(onSuccess != null);
    return onSuccess(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult onLoading(),
    TResult onError(String message),
    TResult onSuccess(List<Placemark> position),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSuccess != null) {
      return onSuccess(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult onLoading(_OnLoading value),
    @required TResult onError(_OnError value),
    @required TResult onSuccess(_OnSuccess value),
  }) {
    assert(initial != null);
    assert(onLoading != null);
    assert(onError != null);
    assert(onSuccess != null);
    return onSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult onLoading(_OnLoading value),
    TResult onError(_OnError value),
    TResult onSuccess(_OnSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSuccess != null) {
      return onSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnSuccess implements LocationState {
  const factory _OnSuccess(List<Placemark> position) = _$_OnSuccess;

  List<Placemark> get position;
  _$OnSuccessCopyWith<_OnSuccess> get copyWith;
}
