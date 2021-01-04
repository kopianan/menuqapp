// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RestaurantFailureTearOff {
  const _$RestaurantFailureTearOff();

// ignore: unused_element
  _BadRequest badRequest(String message) {
    return _BadRequest(
      message,
    );
  }

// ignore: unused_element
  _NotFound notFound() {
    return const _NotFound();
  }

// ignore: unused_element
  _ServerError serverError(String message) {
    return _ServerError(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RestaurantFailure = _$RestaurantFailureTearOff();

/// @nodoc
mixin _$RestaurantFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult badRequest(String message),
    @required TResult notFound(),
    @required TResult serverError(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult badRequest(String message),
    TResult notFound(),
    TResult serverError(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult badRequest(_BadRequest value),
    @required TResult notFound(_NotFound value),
    @required TResult serverError(_ServerError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult badRequest(_BadRequest value),
    TResult notFound(_NotFound value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RestaurantFailureCopyWith<$Res> {
  factory $RestaurantFailureCopyWith(
          RestaurantFailure value, $Res Function(RestaurantFailure) then) =
      _$RestaurantFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantFailureCopyWithImpl<$Res>
    implements $RestaurantFailureCopyWith<$Res> {
  _$RestaurantFailureCopyWithImpl(this._value, this._then);

  final RestaurantFailure _value;
  // ignore: unused_field
  final $Res Function(RestaurantFailure) _then;
}

/// @nodoc
abstract class _$BadRequestCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) then) =
      __$BadRequestCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$BadRequestCopyWithImpl<$Res>
    extends _$RestaurantFailureCopyWithImpl<$Res>
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

/// @nodoc
class _$_BadRequest implements _BadRequest {
  const _$_BadRequest(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RestaurantFailure.badRequest(message: $message)';
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
  TResult when<TResult extends Object>({
    @required TResult badRequest(String message),
    @required TResult notFound(),
    @required TResult serverError(String message),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult badRequest(String message),
    TResult notFound(),
    TResult serverError(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult badRequest(_BadRequest value),
    @required TResult notFound(_NotFound value),
    @required TResult serverError(_ServerError value),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult badRequest(_BadRequest value),
    TResult notFound(_NotFound value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements RestaurantFailure {
  const factory _BadRequest(String message) = _$_BadRequest;

  String get message;
  _$BadRequestCopyWith<_BadRequest> get copyWith;
}

/// @nodoc
abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotFoundCopyWithImpl<$Res>
    extends _$RestaurantFailureCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;
}

/// @nodoc
class _$_NotFound implements _NotFound {
  const _$_NotFound();

  @override
  String toString() {
    return 'RestaurantFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult badRequest(String message),
    @required TResult notFound(),
    @required TResult serverError(String message),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult badRequest(String message),
    TResult notFound(),
    TResult serverError(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult badRequest(_BadRequest value),
    @required TResult notFound(_NotFound value),
    @required TResult serverError(_ServerError value),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult badRequest(_BadRequest value),
    TResult notFound(_NotFound value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements RestaurantFailure {
  const factory _NotFound() = _$_NotFound;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$RestaurantFailureCopyWithImpl<$Res>
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

/// @nodoc
class _$_ServerError implements _ServerError {
  const _$_ServerError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RestaurantFailure.serverError(message: $message)';
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
  TResult when<TResult extends Object>({
    @required TResult badRequest(String message),
    @required TResult notFound(),
    @required TResult serverError(String message),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult badRequest(String message),
    TResult notFound(),
    TResult serverError(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult badRequest(_BadRequest value),
    @required TResult notFound(_NotFound value),
    @required TResult serverError(_ServerError value),
  }) {
    assert(badRequest != null);
    assert(notFound != null);
    assert(serverError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult badRequest(_BadRequest value),
    TResult notFound(_NotFound value),
    TResult serverError(_ServerError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements RestaurantFailure {
  const factory _ServerError(String message) = _$_ServerError;

  String get message;
  _$ServerErrorCopyWith<_ServerError> get copyWith;
}
