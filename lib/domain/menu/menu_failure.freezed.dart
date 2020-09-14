// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'menu_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MenuFailureTearOff {
  const _$MenuFailureTearOff();

  _BadRequest badRequest(String message) {
    return _BadRequest(
      message,
    );
  }

  _NotFound notFound() {
    return const _NotFound();
  }

  _ServerError serverError(String message) {
    return _ServerError(
      message,
    );
  }
}

// ignore: unused_element
const $MenuFailure = _$MenuFailureTearOff();

mixin _$MenuFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(String message),
    @required Result notFound(),
    @required Result serverError(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(String message),
    Result notFound(),
    Result serverError(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result notFound(_NotFound value),
    @required Result serverError(_ServerError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result notFound(_NotFound value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  });
}

abstract class $MenuFailureCopyWith<$Res> {
  factory $MenuFailureCopyWith(
          MenuFailure value, $Res Function(MenuFailure) then) =
      _$MenuFailureCopyWithImpl<$Res>;
}

class _$MenuFailureCopyWithImpl<$Res> implements $MenuFailureCopyWith<$Res> {
  _$MenuFailureCopyWithImpl(this._value, this._then);

  final MenuFailure _value;
  // ignore: unused_field
  final $Res Function(MenuFailure) _then;
}

abstract class _$BadRequestCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) then) =
      __$BadRequestCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$BadRequestCopyWithImpl<$Res> extends _$MenuFailureCopyWithImpl<$Res>
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
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_BadRequest implements _BadRequest {
  const _$_BadRequest(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'MenuFailure.badRequest(message: $message)';
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
    @required Result badRequest(String message),
    @required Result notFound(),
    @required Result serverError(String message),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(String message),
    Result notFound(),
    Result serverError(String message),
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
    @required Result badRequest(_BadRequest value),
    @required Result notFound(_NotFound value),
    @required Result serverError(_ServerError value),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result notFound(_NotFound value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements MenuFailure {
  const factory _BadRequest(String message) = _$_BadRequest;

  String get message;
  _$BadRequestCopyWith<_BadRequest> get copyWith;
}

abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

class __$NotFoundCopyWithImpl<$Res> extends _$MenuFailureCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;
}

class _$_NotFound implements _NotFound {
  const _$_NotFound();

  @override
  String toString() {
    return 'MenuFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(String message),
    @required Result notFound(),
    @required Result serverError(String message),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(String message),
    Result notFound(),
    Result serverError(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result notFound(_NotFound value),
    @required Result serverError(_ServerError value),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result notFound(_NotFound value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements MenuFailure {
  const factory _NotFound() = _$_NotFound;
}

abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$ServerErrorCopyWithImpl<$Res> extends _$MenuFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ServerError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ServerError implements _ServerError {
  const _$_ServerError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'MenuFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result badRequest(String message),
    @required Result notFound(),
    @required Result serverError(String message),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result badRequest(String message),
    Result notFound(),
    Result serverError(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result badRequest(_BadRequest value),
    @required Result notFound(_NotFound value),
    @required Result serverError(_ServerError value),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result badRequest(_BadRequest value),
    Result notFound(_NotFound value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements MenuFailure {
  const factory _ServerError(String message) = _$_ServerError;

  String get message;
  _$ServerErrorCopyWith<_ServerError> get copyWith;
}
