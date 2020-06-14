// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'scan_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ScanFailureTearOff {
  const _$ScanFailureTearOff();

  _ServerError serverError() {
    return const _ServerError();
  }

  _BadRequest badRequest({String message}) {
    return _BadRequest(
      message: message,
    );
  }
}

// ignore: unused_element
const $ScanFailure = _$ScanFailureTearOff();

mixin _$ScanFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result badRequest(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result badRequest(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(_ServerError value),
    @required Result badRequest(_BadRequest value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(_ServerError value),
    Result badRequest(_BadRequest value),
    @required Result orElse(),
  });
}

abstract class $ScanFailureCopyWith<$Res> {
  factory $ScanFailureCopyWith(
          ScanFailure value, $Res Function(ScanFailure) then) =
      _$ScanFailureCopyWithImpl<$Res>;
}

class _$ScanFailureCopyWithImpl<$Res> implements $ScanFailureCopyWith<$Res> {
  _$ScanFailureCopyWithImpl(this._value, this._then);

  final ScanFailure _value;
  // ignore: unused_field
  final $Res Function(ScanFailure) _then;
}

abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

class __$ServerErrorCopyWithImpl<$Res> extends _$ScanFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'ScanFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result badRequest(String message),
  }) {
    assert(serverError != null);
    assert(badRequest != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result badRequest(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(_ServerError value),
    @required Result badRequest(_BadRequest value),
  }) {
    assert(serverError != null);
    assert(badRequest != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(_ServerError value),
    Result badRequest(_BadRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ScanFailure {
  const factory _ServerError() = _$_ServerError;
}

abstract class _$BadRequestCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) then) =
      __$BadRequestCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$BadRequestCopyWithImpl<$Res> extends _$ScanFailureCopyWithImpl<$Res>
    implements _$BadRequestCopyWith<$Res> {
  __$BadRequestCopyWithImpl(
      _BadRequest _value, $Res Function(_BadRequest) _then)
      : super(_value, (v) => _then(v as _BadRequest));

  @override
  _BadRequest get _value => super._value as _BadRequest;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_BadRequest(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_BadRequest implements _BadRequest {
  const _$_BadRequest({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ScanFailure.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BadRequest &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$BadRequestCopyWith<_BadRequest> get copyWith =>
      __$BadRequestCopyWithImpl<_BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result badRequest(String message),
  }) {
    assert(serverError != null);
    assert(badRequest != null);
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result badRequest(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(_ServerError value),
    @required Result badRequest(_BadRequest value),
  }) {
    assert(serverError != null);
    assert(badRequest != null);
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(_ServerError value),
    Result badRequest(_BadRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements ScanFailure {
  const factory _BadRequest({String message}) = _$_BadRequest;

  String get message;
  _$BadRequestCopyWith<_BadRequest> get copyWith;
}
