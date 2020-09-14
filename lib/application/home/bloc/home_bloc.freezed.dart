// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _Started started() {
    return const _Started();
  }

  _RequestHomeData requestHomeData(String lantLong) {
    return _RequestHomeData(
      lantLong,
    );
  }
}

// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

mixin _$HomeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result requestHomeData(String lantLong),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result requestHomeData(String lantLong),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result requestHomeData(_RequestHomeData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result requestHomeData(_RequestHomeData value),
    @required Result orElse(),
  });
}

abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

class __$StartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result requestHomeData(String lantLong),
  }) {
    assert(started != null);
    assert(requestHomeData != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result requestHomeData(String lantLong),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result requestHomeData(_RequestHomeData value),
  }) {
    assert(started != null);
    assert(requestHomeData != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result requestHomeData(_RequestHomeData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

abstract class _$RequestHomeDataCopyWith<$Res> {
  factory _$RequestHomeDataCopyWith(
          _RequestHomeData value, $Res Function(_RequestHomeData) then) =
      __$RequestHomeDataCopyWithImpl<$Res>;
  $Res call({String lantLong});
}

class __$RequestHomeDataCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$RequestHomeDataCopyWith<$Res> {
  __$RequestHomeDataCopyWithImpl(
      _RequestHomeData _value, $Res Function(_RequestHomeData) _then)
      : super(_value, (v) => _then(v as _RequestHomeData));

  @override
  _RequestHomeData get _value => super._value as _RequestHomeData;

  @override
  $Res call({
    Object lantLong = freezed,
  }) {
    return _then(_RequestHomeData(
      lantLong == freezed ? _value.lantLong : lantLong as String,
    ));
  }
}

class _$_RequestHomeData implements _RequestHomeData {
  const _$_RequestHomeData(this.lantLong) : assert(lantLong != null);

  @override
  final String lantLong;

  @override
  String toString() {
    return 'HomeEvent.requestHomeData(lantLong: $lantLong)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestHomeData &&
            (identical(other.lantLong, lantLong) ||
                const DeepCollectionEquality()
                    .equals(other.lantLong, lantLong)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lantLong);

  @override
  _$RequestHomeDataCopyWith<_RequestHomeData> get copyWith =>
      __$RequestHomeDataCopyWithImpl<_RequestHomeData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result requestHomeData(String lantLong),
  }) {
    assert(started != null);
    assert(requestHomeData != null);
    return requestHomeData(lantLong);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result requestHomeData(String lantLong),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestHomeData != null) {
      return requestHomeData(lantLong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result requestHomeData(_RequestHomeData value),
  }) {
    assert(started != null);
    assert(requestHomeData != null);
    return requestHomeData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result requestHomeData(_RequestHomeData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestHomeData != null) {
      return requestHomeData(this);
    }
    return orElse();
  }
}

abstract class _RequestHomeData implements HomeEvent {
  const factory _RequestHomeData(String lantLong) = _$_RequestHomeData;

  String get lantLong;
  _$RequestHomeDataCopyWith<_RequestHomeData> get copyWith;
}

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _RequestAllData allHomeDataOption(
      Option<Either<AuthenticationFailure, List<dynamic>>> dataOption) {
    return _RequestAllData(
      dataOption,
    );
  }

  _IsLoading isLoading() {
    return const _IsLoading();
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result allHomeDataOption(
            Option<Either<AuthenticationFailure, List<dynamic>>> dataOption),
    @required Result isLoading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result allHomeDataOption(
        Option<Either<AuthenticationFailure, List<dynamic>>> dataOption),
    Result isLoading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result allHomeDataOption(_RequestAllData value),
    @required Result isLoading(_IsLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result allHomeDataOption(_RequestAllData value),
    Result isLoading(_IsLoading value),
    @required Result orElse(),
  });
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    @required
        Result allHomeDataOption(
            Option<Either<AuthenticationFailure, List<dynamic>>> dataOption),
    @required Result isLoading(),
  }) {
    assert(initial != null);
    assert(allHomeDataOption != null);
    assert(isLoading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result allHomeDataOption(
        Option<Either<AuthenticationFailure, List<dynamic>>> dataOption),
    Result isLoading(),
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
    @required Result allHomeDataOption(_RequestAllData value),
    @required Result isLoading(_IsLoading value),
  }) {
    assert(initial != null);
    assert(allHomeDataOption != null);
    assert(isLoading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result allHomeDataOption(_RequestAllData value),
    Result isLoading(_IsLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

abstract class _$RequestAllDataCopyWith<$Res> {
  factory _$RequestAllDataCopyWith(
          _RequestAllData value, $Res Function(_RequestAllData) then) =
      __$RequestAllDataCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthenticationFailure, List<dynamic>>> dataOption});
}

class __$RequestAllDataCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$RequestAllDataCopyWith<$Res> {
  __$RequestAllDataCopyWithImpl(
      _RequestAllData _value, $Res Function(_RequestAllData) _then)
      : super(_value, (v) => _then(v as _RequestAllData));

  @override
  _RequestAllData get _value => super._value as _RequestAllData;

  @override
  $Res call({
    Object dataOption = freezed,
  }) {
    return _then(_RequestAllData(
      dataOption == freezed
          ? _value.dataOption
          : dataOption as Option<Either<AuthenticationFailure, List<dynamic>>>,
    ));
  }
}

class _$_RequestAllData implements _RequestAllData {
  const _$_RequestAllData(this.dataOption) : assert(dataOption != null);

  @override
  final Option<Either<AuthenticationFailure, List<dynamic>>> dataOption;

  @override
  String toString() {
    return 'HomeState.allHomeDataOption(dataOption: $dataOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestAllData &&
            (identical(other.dataOption, dataOption) ||
                const DeepCollectionEquality()
                    .equals(other.dataOption, dataOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dataOption);

  @override
  _$RequestAllDataCopyWith<_RequestAllData> get copyWith =>
      __$RequestAllDataCopyWithImpl<_RequestAllData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result allHomeDataOption(
            Option<Either<AuthenticationFailure, List<dynamic>>> dataOption),
    @required Result isLoading(),
  }) {
    assert(initial != null);
    assert(allHomeDataOption != null);
    assert(isLoading != null);
    return allHomeDataOption(dataOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result allHomeDataOption(
        Option<Either<AuthenticationFailure, List<dynamic>>> dataOption),
    Result isLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allHomeDataOption != null) {
      return allHomeDataOption(dataOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result allHomeDataOption(_RequestAllData value),
    @required Result isLoading(_IsLoading value),
  }) {
    assert(initial != null);
    assert(allHomeDataOption != null);
    assert(isLoading != null);
    return allHomeDataOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result allHomeDataOption(_RequestAllData value),
    Result isLoading(_IsLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allHomeDataOption != null) {
      return allHomeDataOption(this);
    }
    return orElse();
  }
}

abstract class _RequestAllData implements HomeState {
  const factory _RequestAllData(
          Option<Either<AuthenticationFailure, List<dynamic>>> dataOption) =
      _$_RequestAllData;

  Option<Either<AuthenticationFailure, List<dynamic>>> get dataOption;
  _$RequestAllDataCopyWith<_RequestAllData> get copyWith;
}

abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

class __$IsLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;
}

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'HomeState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result allHomeDataOption(
            Option<Either<AuthenticationFailure, List<dynamic>>> dataOption),
    @required Result isLoading(),
  }) {
    assert(initial != null);
    assert(allHomeDataOption != null);
    assert(isLoading != null);
    return isLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result allHomeDataOption(
        Option<Either<AuthenticationFailure, List<dynamic>>> dataOption),
    Result isLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result allHomeDataOption(_RequestAllData value),
    @required Result isLoading(_IsLoading value),
  }) {
    assert(initial != null);
    assert(allHomeDataOption != null);
    assert(isLoading != null);
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result allHomeDataOption(_RequestAllData value),
    Result isLoading(_IsLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements HomeState {
  const factory _IsLoading() = _$_IsLoading;
}
