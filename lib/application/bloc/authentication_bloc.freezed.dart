// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

// ignore: unused_element
  _RegisterDevice registerDevice(String imei) {
    return _RegisterDevice(
      imei,
    );
  }

// ignore: unused_element
  _Authenticate authenticate() {
    return const _Authenticate();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult registerDevice(String imei),
    @required TResult authenticate(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult registerDevice(String imei),
    TResult authenticate(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult registerDevice(_RegisterDevice value),
    @required TResult authenticate(_Authenticate value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult registerDevice(_RegisterDevice value),
    TResult authenticate(_Authenticate value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$RegisterDeviceCopyWith<$Res> {
  factory _$RegisterDeviceCopyWith(
          _RegisterDevice value, $Res Function(_RegisterDevice) then) =
      __$RegisterDeviceCopyWithImpl<$Res>;
  $Res call({String imei});
}

/// @nodoc
class __$RegisterDeviceCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$RegisterDeviceCopyWith<$Res> {
  __$RegisterDeviceCopyWithImpl(
      _RegisterDevice _value, $Res Function(_RegisterDevice) _then)
      : super(_value, (v) => _then(v as _RegisterDevice));

  @override
  _RegisterDevice get _value => super._value as _RegisterDevice;

  @override
  $Res call({
    Object imei = freezed,
  }) {
    return _then(_RegisterDevice(
      imei == freezed ? _value.imei : imei as String,
    ));
  }
}

/// @nodoc
class _$_RegisterDevice implements _RegisterDevice {
  const _$_RegisterDevice(this.imei) : assert(imei != null);

  @override
  final String imei;

  @override
  String toString() {
    return 'AuthenticationEvent.registerDevice(imei: $imei)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterDevice &&
            (identical(other.imei, imei) ||
                const DeepCollectionEquality().equals(other.imei, imei)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imei);

  @override
  _$RegisterDeviceCopyWith<_RegisterDevice> get copyWith =>
      __$RegisterDeviceCopyWithImpl<_RegisterDevice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult registerDevice(String imei),
    @required TResult authenticate(),
  }) {
    assert(registerDevice != null);
    assert(authenticate != null);
    return registerDevice(imei);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult registerDevice(String imei),
    TResult authenticate(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerDevice != null) {
      return registerDevice(imei);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult registerDevice(_RegisterDevice value),
    @required TResult authenticate(_Authenticate value),
  }) {
    assert(registerDevice != null);
    assert(authenticate != null);
    return registerDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult registerDevice(_RegisterDevice value),
    TResult authenticate(_Authenticate value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerDevice != null) {
      return registerDevice(this);
    }
    return orElse();
  }
}

abstract class _RegisterDevice implements AuthenticationEvent {
  const factory _RegisterDevice(String imei) = _$_RegisterDevice;

  String get imei;
  _$RegisterDeviceCopyWith<_RegisterDevice> get copyWith;
}

/// @nodoc
abstract class _$AuthenticateCopyWith<$Res> {
  factory _$AuthenticateCopyWith(
          _Authenticate value, $Res Function(_Authenticate) then) =
      __$AuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticateCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$AuthenticateCopyWith<$Res> {
  __$AuthenticateCopyWithImpl(
      _Authenticate _value, $Res Function(_Authenticate) _then)
      : super(_value, (v) => _then(v as _Authenticate));

  @override
  _Authenticate get _value => super._value as _Authenticate;
}

/// @nodoc
class _$_Authenticate implements _Authenticate {
  const _$_Authenticate();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult registerDevice(String imei),
    @required TResult authenticate(),
  }) {
    assert(registerDevice != null);
    assert(authenticate != null);
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult registerDevice(String imei),
    TResult authenticate(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult registerDevice(_RegisterDevice value),
    @required TResult authenticate(_Authenticate value),
  }) {
    assert(registerDevice != null);
    assert(authenticate != null);
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult registerDevice(_RegisterDevice value),
    TResult authenticate(_Authenticate value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements AuthenticationEvent {
  const factory _Authenticate() = _$_Authenticate;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _RegisterDeviceOption registerDeviceOption(
      {bool isLoading, Option<Either<AuthenticationFailure, String>> option}) {
    return _RegisterDeviceOption(
      isLoading: isLoading,
      option: option,
    );
  }

// ignore: unused_element
  _AuthStatus authStatus(bool isAuthenticate) {
    return _AuthStatus(
      isAuthenticate,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult registerDeviceOption(bool isLoading,
            Option<Either<AuthenticationFailure, String>> option),
    @required TResult authStatus(bool isAuthenticate),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult registerDeviceOption(
        bool isLoading, Option<Either<AuthenticationFailure, String>> option),
    TResult authStatus(bool isAuthenticate),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult registerDeviceOption(_RegisterDeviceOption value),
    @required TResult authStatus(_AuthStatus value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult registerDeviceOption(_RegisterDeviceOption value),
    TResult authStatus(_AuthStatus value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.initial()';
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
    @required
        TResult registerDeviceOption(bool isLoading,
            Option<Either<AuthenticationFailure, String>> option),
    @required TResult authStatus(bool isAuthenticate),
  }) {
    assert(initial != null);
    assert(registerDeviceOption != null);
    assert(authStatus != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult registerDeviceOption(
        bool isLoading, Option<Either<AuthenticationFailure, String>> option),
    TResult authStatus(bool isAuthenticate),
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
    @required TResult registerDeviceOption(_RegisterDeviceOption value),
    @required TResult authStatus(_AuthStatus value),
  }) {
    assert(initial != null);
    assert(registerDeviceOption != null);
    assert(authStatus != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult registerDeviceOption(_RegisterDeviceOption value),
    TResult authStatus(_AuthStatus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$RegisterDeviceOptionCopyWith<$Res> {
  factory _$RegisterDeviceOptionCopyWith(_RegisterDeviceOption value,
          $Res Function(_RegisterDeviceOption) then) =
      __$RegisterDeviceOptionCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, Option<Either<AuthenticationFailure, String>> option});
}

/// @nodoc
class __$RegisterDeviceOptionCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$RegisterDeviceOptionCopyWith<$Res> {
  __$RegisterDeviceOptionCopyWithImpl(
      _RegisterDeviceOption _value, $Res Function(_RegisterDeviceOption) _then)
      : super(_value, (v) => _then(v as _RegisterDeviceOption));

  @override
  _RegisterDeviceOption get _value => super._value as _RegisterDeviceOption;

  @override
  $Res call({
    Object isLoading = freezed,
    Object option = freezed,
  }) {
    return _then(_RegisterDeviceOption(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      option: option == freezed
          ? _value.option
          : option as Option<Either<AuthenticationFailure, String>>,
    ));
  }
}

/// @nodoc
class _$_RegisterDeviceOption implements _RegisterDeviceOption {
  const _$_RegisterDeviceOption({this.isLoading, this.option});

  @override
  final bool isLoading;
  @override
  final Option<Either<AuthenticationFailure, String>> option;

  @override
  String toString() {
    return 'AuthenticationState.registerDeviceOption(isLoading: $isLoading, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterDeviceOption &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.option, option) ||
                const DeepCollectionEquality().equals(other.option, option)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(option);

  @override
  _$RegisterDeviceOptionCopyWith<_RegisterDeviceOption> get copyWith =>
      __$RegisterDeviceOptionCopyWithImpl<_RegisterDeviceOption>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult registerDeviceOption(bool isLoading,
            Option<Either<AuthenticationFailure, String>> option),
    @required TResult authStatus(bool isAuthenticate),
  }) {
    assert(initial != null);
    assert(registerDeviceOption != null);
    assert(authStatus != null);
    return registerDeviceOption(isLoading, option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult registerDeviceOption(
        bool isLoading, Option<Either<AuthenticationFailure, String>> option),
    TResult authStatus(bool isAuthenticate),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerDeviceOption != null) {
      return registerDeviceOption(isLoading, option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult registerDeviceOption(_RegisterDeviceOption value),
    @required TResult authStatus(_AuthStatus value),
  }) {
    assert(initial != null);
    assert(registerDeviceOption != null);
    assert(authStatus != null);
    return registerDeviceOption(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult registerDeviceOption(_RegisterDeviceOption value),
    TResult authStatus(_AuthStatus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerDeviceOption != null) {
      return registerDeviceOption(this);
    }
    return orElse();
  }
}

abstract class _RegisterDeviceOption implements AuthenticationState {
  const factory _RegisterDeviceOption(
          {bool isLoading,
          Option<Either<AuthenticationFailure, String>> option}) =
      _$_RegisterDeviceOption;

  bool get isLoading;
  Option<Either<AuthenticationFailure, String>> get option;
  _$RegisterDeviceOptionCopyWith<_RegisterDeviceOption> get copyWith;
}

/// @nodoc
abstract class _$AuthStatusCopyWith<$Res> {
  factory _$AuthStatusCopyWith(
          _AuthStatus value, $Res Function(_AuthStatus) then) =
      __$AuthStatusCopyWithImpl<$Res>;
  $Res call({bool isAuthenticate});
}

/// @nodoc
class __$AuthStatusCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthStatusCopyWith<$Res> {
  __$AuthStatusCopyWithImpl(
      _AuthStatus _value, $Res Function(_AuthStatus) _then)
      : super(_value, (v) => _then(v as _AuthStatus));

  @override
  _AuthStatus get _value => super._value as _AuthStatus;

  @override
  $Res call({
    Object isAuthenticate = freezed,
  }) {
    return _then(_AuthStatus(
      isAuthenticate == freezed
          ? _value.isAuthenticate
          : isAuthenticate as bool,
    ));
  }
}

/// @nodoc
class _$_AuthStatus implements _AuthStatus {
  const _$_AuthStatus(this.isAuthenticate) : assert(isAuthenticate != null);

  @override
  final bool isAuthenticate;

  @override
  String toString() {
    return 'AuthenticationState.authStatus(isAuthenticate: $isAuthenticate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthStatus &&
            (identical(other.isAuthenticate, isAuthenticate) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticate, isAuthenticate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAuthenticate);

  @override
  _$AuthStatusCopyWith<_AuthStatus> get copyWith =>
      __$AuthStatusCopyWithImpl<_AuthStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult registerDeviceOption(bool isLoading,
            Option<Either<AuthenticationFailure, String>> option),
    @required TResult authStatus(bool isAuthenticate),
  }) {
    assert(initial != null);
    assert(registerDeviceOption != null);
    assert(authStatus != null);
    return authStatus(isAuthenticate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult registerDeviceOption(
        bool isLoading, Option<Either<AuthenticationFailure, String>> option),
    TResult authStatus(bool isAuthenticate),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authStatus != null) {
      return authStatus(isAuthenticate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult registerDeviceOption(_RegisterDeviceOption value),
    @required TResult authStatus(_AuthStatus value),
  }) {
    assert(initial != null);
    assert(registerDeviceOption != null);
    assert(authStatus != null);
    return authStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult registerDeviceOption(_RegisterDeviceOption value),
    TResult authStatus(_AuthStatus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authStatus != null) {
      return authStatus(this);
    }
    return orElse();
  }
}

abstract class _AuthStatus implements AuthenticationState {
  const factory _AuthStatus(bool isAuthenticate) = _$_AuthStatus;

  bool get isAuthenticate;
  _$AuthStatusCopyWith<_AuthStatus> get copyWith;
}
