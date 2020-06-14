// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'scan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ScanEventTearOff {
  const _$ScanEventTearOff();

  _ScanEvent call({@required String codeQr}) {
    return _ScanEvent(
      codeQr: codeQr,
    );
  }
}

// ignore: unused_element
const $ScanEvent = _$ScanEventTearOff();

mixin _$ScanEvent {
  String get codeQr;

  $ScanEventCopyWith<ScanEvent> get copyWith;
}

abstract class $ScanEventCopyWith<$Res> {
  factory $ScanEventCopyWith(ScanEvent value, $Res Function(ScanEvent) then) =
      _$ScanEventCopyWithImpl<$Res>;
  $Res call({String codeQr});
}

class _$ScanEventCopyWithImpl<$Res> implements $ScanEventCopyWith<$Res> {
  _$ScanEventCopyWithImpl(this._value, this._then);

  final ScanEvent _value;
  // ignore: unused_field
  final $Res Function(ScanEvent) _then;

  @override
  $Res call({
    Object codeQr = freezed,
  }) {
    return _then(_value.copyWith(
      codeQr: codeQr == freezed ? _value.codeQr : codeQr as String,
    ));
  }
}

abstract class _$ScanEventCopyWith<$Res> implements $ScanEventCopyWith<$Res> {
  factory _$ScanEventCopyWith(
          _ScanEvent value, $Res Function(_ScanEvent) then) =
      __$ScanEventCopyWithImpl<$Res>;
  @override
  $Res call({String codeQr});
}

class __$ScanEventCopyWithImpl<$Res> extends _$ScanEventCopyWithImpl<$Res>
    implements _$ScanEventCopyWith<$Res> {
  __$ScanEventCopyWithImpl(_ScanEvent _value, $Res Function(_ScanEvent) _then)
      : super(_value, (v) => _then(v as _ScanEvent));

  @override
  _ScanEvent get _value => super._value as _ScanEvent;

  @override
  $Res call({
    Object codeQr = freezed,
  }) {
    return _then(_ScanEvent(
      codeQr: codeQr == freezed ? _value.codeQr : codeQr as String,
    ));
  }
}

class _$_ScanEvent implements _ScanEvent {
  _$_ScanEvent({@required this.codeQr}) : assert(codeQr != null);

  @override
  final String codeQr;

  @override
  String toString() {
    return 'ScanEvent(codeQr: $codeQr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScanEvent &&
            (identical(other.codeQr, codeQr) ||
                const DeepCollectionEquality().equals(other.codeQr, codeQr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(codeQr);

  @override
  _$ScanEventCopyWith<_ScanEvent> get copyWith =>
      __$ScanEventCopyWithImpl<_ScanEvent>(this, _$identity);
}

abstract class _ScanEvent implements ScanEvent {
  factory _ScanEvent({@required String codeQr}) = _$_ScanEvent;

  @override
  String get codeQr;
  @override
  _$ScanEventCopyWith<_ScanEvent> get copyWith;
}

class _$ScanStateTearOff {
  const _$ScanStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _Loading loading() {
    return _Loading();
  }

  _SuccessOrFailed successOrFailed(
      Option<Either<ScanFailure, MenuData>> successOrFailOptoin) {
    return _SuccessOrFailed(
      successOrFailOptoin,
    );
  }
}

// ignore: unused_element
const $ScanState = _$ScanStateTearOff();

mixin _$ScanState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result successOrFailed(
            Option<Either<ScanFailure, MenuData>> successOrFailOptoin),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successOrFailed(
        Option<Either<ScanFailure, MenuData>> successOrFailOptoin),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result successOrFailed(_SuccessOrFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successOrFailed(_SuccessOrFailed value),
    @required Result orElse(),
  });
}

abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res>;
}

class _$ScanStateCopyWithImpl<$Res> implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  final ScanState _value;
  // ignore: unused_field
  final $Res Function(ScanState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ScanStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'ScanState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result successOrFailed(
            Option<Either<ScanFailure, MenuData>> successOrFailOptoin),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successOrFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successOrFailed(
        Option<Either<ScanFailure, MenuData>> successOrFailOptoin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result successOrFailed(_SuccessOrFailed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successOrFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successOrFailed(_SuccessOrFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScanState {
  factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$ScanStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  _$_Loading();

  @override
  String toString() {
    return 'ScanState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result successOrFailed(
            Option<Either<ScanFailure, MenuData>> successOrFailOptoin),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successOrFailed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successOrFailed(
        Option<Either<ScanFailure, MenuData>> successOrFailOptoin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result successOrFailed(_SuccessOrFailed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successOrFailed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successOrFailed(_SuccessOrFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ScanState {
  factory _Loading() = _$_Loading;
}

abstract class _$SuccessOrFailedCopyWith<$Res> {
  factory _$SuccessOrFailedCopyWith(
          _SuccessOrFailed value, $Res Function(_SuccessOrFailed) then) =
      __$SuccessOrFailedCopyWithImpl<$Res>;
  $Res call({Option<Either<ScanFailure, MenuData>> successOrFailOptoin});
}

class __$SuccessOrFailedCopyWithImpl<$Res> extends _$ScanStateCopyWithImpl<$Res>
    implements _$SuccessOrFailedCopyWith<$Res> {
  __$SuccessOrFailedCopyWithImpl(
      _SuccessOrFailed _value, $Res Function(_SuccessOrFailed) _then)
      : super(_value, (v) => _then(v as _SuccessOrFailed));

  @override
  _SuccessOrFailed get _value => super._value as _SuccessOrFailed;

  @override
  $Res call({
    Object successOrFailOptoin = freezed,
  }) {
    return _then(_SuccessOrFailed(
      successOrFailOptoin == freezed
          ? _value.successOrFailOptoin
          : successOrFailOptoin as Option<Either<ScanFailure, MenuData>>,
    ));
  }
}

class _$_SuccessOrFailed implements _SuccessOrFailed {
  _$_SuccessOrFailed(this.successOrFailOptoin)
      : assert(successOrFailOptoin != null);

  @override
  final Option<Either<ScanFailure, MenuData>> successOrFailOptoin;

  @override
  String toString() {
    return 'ScanState.successOrFailed(successOrFailOptoin: $successOrFailOptoin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessOrFailed &&
            (identical(other.successOrFailOptoin, successOrFailOptoin) ||
                const DeepCollectionEquality()
                    .equals(other.successOrFailOptoin, successOrFailOptoin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(successOrFailOptoin);

  @override
  _$SuccessOrFailedCopyWith<_SuccessOrFailed> get copyWith =>
      __$SuccessOrFailedCopyWithImpl<_SuccessOrFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result successOrFailed(
            Option<Either<ScanFailure, MenuData>> successOrFailOptoin),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successOrFailed != null);
    return successOrFailed(successOrFailOptoin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successOrFailed(
        Option<Either<ScanFailure, MenuData>> successOrFailOptoin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successOrFailed != null) {
      return successOrFailed(successOrFailOptoin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result successOrFailed(_SuccessOrFailed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successOrFailed != null);
    return successOrFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successOrFailed(_SuccessOrFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successOrFailed != null) {
      return successOrFailed(this);
    }
    return orElse();
  }
}

abstract class _SuccessOrFailed implements ScanState {
  factory _SuccessOrFailed(
          Option<Either<ScanFailure, MenuData>> successOrFailOptoin) =
      _$_SuccessOrFailed;

  Option<Either<ScanFailure, MenuData>> get successOrFailOptoin;
  _$SuccessOrFailedCopyWith<_SuccessOrFailed> get copyWith;
}
