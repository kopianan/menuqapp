// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'restaurant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RestaurantEventTearOff {
  const _$RestaurantEventTearOff();

  _GetRestaurantList getRestaurantList(
      {@required GetRestaurantListRequest request}) {
    return _GetRestaurantList(
      request: request,
    );
  }

  _GetNearbyRestaurantList getNearbyRestaurantList(
      {@required GetRestaurantListRequest request}) {
    return _GetNearbyRestaurantList(
      request: request,
    );
  }

  _GetCompleteRestaurantData getCompleteRestaurantData(
      {@required String restaurantId}) {
    return _GetCompleteRestaurantData(
      restaurantId: restaurantId,
    );
  }
}

// ignore: unused_element
const $RestaurantEvent = _$RestaurantEventTearOff();

mixin _$RestaurantEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRestaurantList(GetRestaurantListRequest request),
    @required Result getNearbyRestaurantList(GetRestaurantListRequest request),
    @required Result getCompleteRestaurantData(String restaurantId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRestaurantList(GetRestaurantListRequest request),
    Result getNearbyRestaurantList(GetRestaurantListRequest request),
    Result getCompleteRestaurantData(String restaurantId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getRestaurantList(_GetRestaurantList value),
    @required Result getNearbyRestaurantList(_GetNearbyRestaurantList value),
    @required
        Result getCompleteRestaurantData(_GetCompleteRestaurantData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRestaurantList(_GetRestaurantList value),
    Result getNearbyRestaurantList(_GetNearbyRestaurantList value),
    Result getCompleteRestaurantData(_GetCompleteRestaurantData value),
    @required Result orElse(),
  });
}

abstract class $RestaurantEventCopyWith<$Res> {
  factory $RestaurantEventCopyWith(
          RestaurantEvent value, $Res Function(RestaurantEvent) then) =
      _$RestaurantEventCopyWithImpl<$Res>;
}

class _$RestaurantEventCopyWithImpl<$Res>
    implements $RestaurantEventCopyWith<$Res> {
  _$RestaurantEventCopyWithImpl(this._value, this._then);

  final RestaurantEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantEvent) _then;
}

abstract class _$GetRestaurantListCopyWith<$Res> {
  factory _$GetRestaurantListCopyWith(
          _GetRestaurantList value, $Res Function(_GetRestaurantList) then) =
      __$GetRestaurantListCopyWithImpl<$Res>;
  $Res call({GetRestaurantListRequest request});
}

class __$GetRestaurantListCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res>
    implements _$GetRestaurantListCopyWith<$Res> {
  __$GetRestaurantListCopyWithImpl(
      _GetRestaurantList _value, $Res Function(_GetRestaurantList) _then)
      : super(_value, (v) => _then(v as _GetRestaurantList));

  @override
  _GetRestaurantList get _value => super._value as _GetRestaurantList;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(_GetRestaurantList(
      request: request == freezed
          ? _value.request
          : request as GetRestaurantListRequest,
    ));
  }
}

class _$_GetRestaurantList
    with DiagnosticableTreeMixin
    implements _GetRestaurantList {
  const _$_GetRestaurantList({@required this.request})
      : assert(request != null);

  @override
  final GetRestaurantListRequest request;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantEvent.getRestaurantList(request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RestaurantEvent.getRestaurantList'))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetRestaurantList &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @override
  _$GetRestaurantListCopyWith<_GetRestaurantList> get copyWith =>
      __$GetRestaurantListCopyWithImpl<_GetRestaurantList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRestaurantList(GetRestaurantListRequest request),
    @required Result getNearbyRestaurantList(GetRestaurantListRequest request),
    @required Result getCompleteRestaurantData(String restaurantId),
  }) {
    assert(getRestaurantList != null);
    assert(getNearbyRestaurantList != null);
    assert(getCompleteRestaurantData != null);
    return getRestaurantList(request);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRestaurantList(GetRestaurantListRequest request),
    Result getNearbyRestaurantList(GetRestaurantListRequest request),
    Result getCompleteRestaurantData(String restaurantId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRestaurantList != null) {
      return getRestaurantList(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getRestaurantList(_GetRestaurantList value),
    @required Result getNearbyRestaurantList(_GetNearbyRestaurantList value),
    @required
        Result getCompleteRestaurantData(_GetCompleteRestaurantData value),
  }) {
    assert(getRestaurantList != null);
    assert(getNearbyRestaurantList != null);
    assert(getCompleteRestaurantData != null);
    return getRestaurantList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRestaurantList(_GetRestaurantList value),
    Result getNearbyRestaurantList(_GetNearbyRestaurantList value),
    Result getCompleteRestaurantData(_GetCompleteRestaurantData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRestaurantList != null) {
      return getRestaurantList(this);
    }
    return orElse();
  }
}

abstract class _GetRestaurantList implements RestaurantEvent {
  const factory _GetRestaurantList(
      {@required GetRestaurantListRequest request}) = _$_GetRestaurantList;

  GetRestaurantListRequest get request;
  _$GetRestaurantListCopyWith<_GetRestaurantList> get copyWith;
}

abstract class _$GetNearbyRestaurantListCopyWith<$Res> {
  factory _$GetNearbyRestaurantListCopyWith(_GetNearbyRestaurantList value,
          $Res Function(_GetNearbyRestaurantList) then) =
      __$GetNearbyRestaurantListCopyWithImpl<$Res>;
  $Res call({GetRestaurantListRequest request});
}

class __$GetNearbyRestaurantListCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res>
    implements _$GetNearbyRestaurantListCopyWith<$Res> {
  __$GetNearbyRestaurantListCopyWithImpl(_GetNearbyRestaurantList _value,
      $Res Function(_GetNearbyRestaurantList) _then)
      : super(_value, (v) => _then(v as _GetNearbyRestaurantList));

  @override
  _GetNearbyRestaurantList get _value =>
      super._value as _GetNearbyRestaurantList;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(_GetNearbyRestaurantList(
      request: request == freezed
          ? _value.request
          : request as GetRestaurantListRequest,
    ));
  }
}

class _$_GetNearbyRestaurantList
    with DiagnosticableTreeMixin
    implements _GetNearbyRestaurantList {
  const _$_GetNearbyRestaurantList({@required this.request})
      : assert(request != null);

  @override
  final GetRestaurantListRequest request;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantEvent.getNearbyRestaurantList(request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RestaurantEvent.getNearbyRestaurantList'))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetNearbyRestaurantList &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @override
  _$GetNearbyRestaurantListCopyWith<_GetNearbyRestaurantList> get copyWith =>
      __$GetNearbyRestaurantListCopyWithImpl<_GetNearbyRestaurantList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRestaurantList(GetRestaurantListRequest request),
    @required Result getNearbyRestaurantList(GetRestaurantListRequest request),
    @required Result getCompleteRestaurantData(String restaurantId),
  }) {
    assert(getRestaurantList != null);
    assert(getNearbyRestaurantList != null);
    assert(getCompleteRestaurantData != null);
    return getNearbyRestaurantList(request);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRestaurantList(GetRestaurantListRequest request),
    Result getNearbyRestaurantList(GetRestaurantListRequest request),
    Result getCompleteRestaurantData(String restaurantId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getNearbyRestaurantList != null) {
      return getNearbyRestaurantList(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getRestaurantList(_GetRestaurantList value),
    @required Result getNearbyRestaurantList(_GetNearbyRestaurantList value),
    @required
        Result getCompleteRestaurantData(_GetCompleteRestaurantData value),
  }) {
    assert(getRestaurantList != null);
    assert(getNearbyRestaurantList != null);
    assert(getCompleteRestaurantData != null);
    return getNearbyRestaurantList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRestaurantList(_GetRestaurantList value),
    Result getNearbyRestaurantList(_GetNearbyRestaurantList value),
    Result getCompleteRestaurantData(_GetCompleteRestaurantData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getNearbyRestaurantList != null) {
      return getNearbyRestaurantList(this);
    }
    return orElse();
  }
}

abstract class _GetNearbyRestaurantList implements RestaurantEvent {
  const factory _GetNearbyRestaurantList(
          {@required GetRestaurantListRequest request}) =
      _$_GetNearbyRestaurantList;

  GetRestaurantListRequest get request;
  _$GetNearbyRestaurantListCopyWith<_GetNearbyRestaurantList> get copyWith;
}

abstract class _$GetCompleteRestaurantDataCopyWith<$Res> {
  factory _$GetCompleteRestaurantDataCopyWith(_GetCompleteRestaurantData value,
          $Res Function(_GetCompleteRestaurantData) then) =
      __$GetCompleteRestaurantDataCopyWithImpl<$Res>;
  $Res call({String restaurantId});
}

class __$GetCompleteRestaurantDataCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res>
    implements _$GetCompleteRestaurantDataCopyWith<$Res> {
  __$GetCompleteRestaurantDataCopyWithImpl(_GetCompleteRestaurantData _value,
      $Res Function(_GetCompleteRestaurantData) _then)
      : super(_value, (v) => _then(v as _GetCompleteRestaurantData));

  @override
  _GetCompleteRestaurantData get _value =>
      super._value as _GetCompleteRestaurantData;

  @override
  $Res call({
    Object restaurantId = freezed,
  }) {
    return _then(_GetCompleteRestaurantData(
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId as String,
    ));
  }
}

class _$_GetCompleteRestaurantData
    with DiagnosticableTreeMixin
    implements _GetCompleteRestaurantData {
  const _$_GetCompleteRestaurantData({@required this.restaurantId})
      : assert(restaurantId != null);

  @override
  final String restaurantId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantEvent.getCompleteRestaurantData(restaurantId: $restaurantId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RestaurantEvent.getCompleteRestaurantData'))
      ..add(DiagnosticsProperty('restaurantId', restaurantId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCompleteRestaurantData &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurantId);

  @override
  _$GetCompleteRestaurantDataCopyWith<_GetCompleteRestaurantData>
      get copyWith =>
          __$GetCompleteRestaurantDataCopyWithImpl<_GetCompleteRestaurantData>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRestaurantList(GetRestaurantListRequest request),
    @required Result getNearbyRestaurantList(GetRestaurantListRequest request),
    @required Result getCompleteRestaurantData(String restaurantId),
  }) {
    assert(getRestaurantList != null);
    assert(getNearbyRestaurantList != null);
    assert(getCompleteRestaurantData != null);
    return getCompleteRestaurantData(restaurantId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRestaurantList(GetRestaurantListRequest request),
    Result getNearbyRestaurantList(GetRestaurantListRequest request),
    Result getCompleteRestaurantData(String restaurantId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCompleteRestaurantData != null) {
      return getCompleteRestaurantData(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getRestaurantList(_GetRestaurantList value),
    @required Result getNearbyRestaurantList(_GetNearbyRestaurantList value),
    @required
        Result getCompleteRestaurantData(_GetCompleteRestaurantData value),
  }) {
    assert(getRestaurantList != null);
    assert(getNearbyRestaurantList != null);
    assert(getCompleteRestaurantData != null);
    return getCompleteRestaurantData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRestaurantList(_GetRestaurantList value),
    Result getNearbyRestaurantList(_GetNearbyRestaurantList value),
    Result getCompleteRestaurantData(_GetCompleteRestaurantData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCompleteRestaurantData != null) {
      return getCompleteRestaurantData(this);
    }
    return orElse();
  }
}

abstract class _GetCompleteRestaurantData implements RestaurantEvent {
  const factory _GetCompleteRestaurantData({@required String restaurantId}) =
      _$_GetCompleteRestaurantData;

  String get restaurantId;
  _$GetCompleteRestaurantDataCopyWith<_GetCompleteRestaurantData> get copyWith;
}

class _$RestaurantStateTearOff {
  const _$RestaurantStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _GetRestaurantListOption getRestarurantListOption(
      {@required
          bool isLoading,
      @required
          Option<Either<RestaurantFailure, GetRestaurantListResponse>>
              restaurantList}) {
    return _GetRestaurantListOption(
      isLoading: isLoading,
      restaurantList: restaurantList,
    );
  }

  _CompleteRestaurantDataOption completeRestaurantDataOption(
      {@required
          bool isLoading,
      @required
          Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
              restaurantList}) {
    return _CompleteRestaurantDataOption(
      isLoading: isLoading,
      restaurantList: restaurantList,
    );
  }
}

// ignore: unused_element
const $RestaurantState = _$RestaurantStateTearOff();

mixin _$RestaurantState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result getRestarurantListOption(
            bool isLoading,
            Option<Either<RestaurantFailure, GetRestaurantListResponse>>
                restaurantList),
    @required
        Result completeRestaurantDataOption(
            bool isLoading,
            Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
                restaurantList),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getRestarurantListOption(
        bool isLoading,
        Option<Either<RestaurantFailure, GetRestaurantListResponse>>
            restaurantList),
    Result completeRestaurantDataOption(
        bool isLoading,
        Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
            restaurantList),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result getRestarurantListOption(_GetRestaurantListOption value),
    @required
        Result completeRestaurantDataOption(
            _CompleteRestaurantDataOption value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result getRestarurantListOption(_GetRestaurantListOption value),
    Result completeRestaurantDataOption(_CompleteRestaurantDataOption value),
    @required Result orElse(),
  });
}

abstract class $RestaurantStateCopyWith<$Res> {
  factory $RestaurantStateCopyWith(
          RestaurantState value, $Res Function(RestaurantState) then) =
      _$RestaurantStateCopyWithImpl<$Res>;
}

class _$RestaurantStateCopyWithImpl<$Res>
    implements $RestaurantStateCopyWith<$Res> {
  _$RestaurantStateCopyWithImpl(this._value, this._then);

  final RestaurantState _value;
  // ignore: unused_field
  final $Res Function(RestaurantState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$RestaurantStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RestaurantState.initial'));
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
        Result getRestarurantListOption(
            bool isLoading,
            Option<Either<RestaurantFailure, GetRestaurantListResponse>>
                restaurantList),
    @required
        Result completeRestaurantDataOption(
            bool isLoading,
            Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
                restaurantList),
  }) {
    assert(initial != null);
    assert(getRestarurantListOption != null);
    assert(completeRestaurantDataOption != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getRestarurantListOption(
        bool isLoading,
        Option<Either<RestaurantFailure, GetRestaurantListResponse>>
            restaurantList),
    Result completeRestaurantDataOption(
        bool isLoading,
        Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
            restaurantList),
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
    @required Result getRestarurantListOption(_GetRestaurantListOption value),
    @required
        Result completeRestaurantDataOption(
            _CompleteRestaurantDataOption value),
  }) {
    assert(initial != null);
    assert(getRestarurantListOption != null);
    assert(completeRestaurantDataOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result getRestarurantListOption(_GetRestaurantListOption value),
    Result completeRestaurantDataOption(_CompleteRestaurantDataOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RestaurantState {
  const factory _Initial() = _$_Initial;
}

abstract class _$GetRestaurantListOptionCopyWith<$Res> {
  factory _$GetRestaurantListOptionCopyWith(_GetRestaurantListOption value,
          $Res Function(_GetRestaurantListOption) then) =
      __$GetRestaurantListOptionCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<RestaurantFailure, GetRestaurantListResponse>>
          restaurantList});
}

class __$GetRestaurantListOptionCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res>
    implements _$GetRestaurantListOptionCopyWith<$Res> {
  __$GetRestaurantListOptionCopyWithImpl(_GetRestaurantListOption _value,
      $Res Function(_GetRestaurantListOption) _then)
      : super(_value, (v) => _then(v as _GetRestaurantListOption));

  @override
  _GetRestaurantListOption get _value =>
      super._value as _GetRestaurantListOption;

  @override
  $Res call({
    Object isLoading = freezed,
    Object restaurantList = freezed,
  }) {
    return _then(_GetRestaurantListOption(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      restaurantList: restaurantList == freezed
          ? _value.restaurantList
          : restaurantList
              as Option<Either<RestaurantFailure, GetRestaurantListResponse>>,
    ));
  }
}

class _$_GetRestaurantListOption
    with DiagnosticableTreeMixin
    implements _GetRestaurantListOption {
  const _$_GetRestaurantListOption(
      {@required this.isLoading, @required this.restaurantList})
      : assert(isLoading != null),
        assert(restaurantList != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<RestaurantFailure, GetRestaurantListResponse>>
      restaurantList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantState.getRestarurantListOption(isLoading: $isLoading, restaurantList: $restaurantList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RestaurantState.getRestarurantListOption'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('restaurantList', restaurantList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetRestaurantListOption &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.restaurantList, restaurantList) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantList, restaurantList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(restaurantList);

  @override
  _$GetRestaurantListOptionCopyWith<_GetRestaurantListOption> get copyWith =>
      __$GetRestaurantListOptionCopyWithImpl<_GetRestaurantListOption>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result getRestarurantListOption(
            bool isLoading,
            Option<Either<RestaurantFailure, GetRestaurantListResponse>>
                restaurantList),
    @required
        Result completeRestaurantDataOption(
            bool isLoading,
            Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
                restaurantList),
  }) {
    assert(initial != null);
    assert(getRestarurantListOption != null);
    assert(completeRestaurantDataOption != null);
    return getRestarurantListOption(isLoading, restaurantList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getRestarurantListOption(
        bool isLoading,
        Option<Either<RestaurantFailure, GetRestaurantListResponse>>
            restaurantList),
    Result completeRestaurantDataOption(
        bool isLoading,
        Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
            restaurantList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRestarurantListOption != null) {
      return getRestarurantListOption(isLoading, restaurantList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result getRestarurantListOption(_GetRestaurantListOption value),
    @required
        Result completeRestaurantDataOption(
            _CompleteRestaurantDataOption value),
  }) {
    assert(initial != null);
    assert(getRestarurantListOption != null);
    assert(completeRestaurantDataOption != null);
    return getRestarurantListOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result getRestarurantListOption(_GetRestaurantListOption value),
    Result completeRestaurantDataOption(_CompleteRestaurantDataOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRestarurantListOption != null) {
      return getRestarurantListOption(this);
    }
    return orElse();
  }
}

abstract class _GetRestaurantListOption implements RestaurantState {
  const factory _GetRestaurantListOption(
      {@required
          bool isLoading,
      @required
          Option<Either<RestaurantFailure, GetRestaurantListResponse>>
              restaurantList}) = _$_GetRestaurantListOption;

  bool get isLoading;
  Option<Either<RestaurantFailure, GetRestaurantListResponse>>
      get restaurantList;
  _$GetRestaurantListOptionCopyWith<_GetRestaurantListOption> get copyWith;
}

abstract class _$CompleteRestaurantDataOptionCopyWith<$Res> {
  factory _$CompleteRestaurantDataOptionCopyWith(
          _CompleteRestaurantDataOption value,
          $Res Function(_CompleteRestaurantDataOption) then) =
      __$CompleteRestaurantDataOptionCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
          restaurantList});
}

class __$CompleteRestaurantDataOptionCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res>
    implements _$CompleteRestaurantDataOptionCopyWith<$Res> {
  __$CompleteRestaurantDataOptionCopyWithImpl(
      _CompleteRestaurantDataOption _value,
      $Res Function(_CompleteRestaurantDataOption) _then)
      : super(_value, (v) => _then(v as _CompleteRestaurantDataOption));

  @override
  _CompleteRestaurantDataOption get _value =>
      super._value as _CompleteRestaurantDataOption;

  @override
  $Res call({
    Object isLoading = freezed,
    Object restaurantList = freezed,
  }) {
    return _then(_CompleteRestaurantDataOption(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      restaurantList: restaurantList == freezed
          ? _value.restaurantList
          : restaurantList as Option<
              Either<RestaurantFailure, GetAllRestaurantDataResponse>>,
    ));
  }
}

class _$_CompleteRestaurantDataOption
    with DiagnosticableTreeMixin
    implements _CompleteRestaurantDataOption {
  const _$_CompleteRestaurantDataOption(
      {@required this.isLoading, @required this.restaurantList})
      : assert(isLoading != null),
        assert(restaurantList != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
      restaurantList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantState.completeRestaurantDataOption(isLoading: $isLoading, restaurantList: $restaurantList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RestaurantState.completeRestaurantDataOption'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('restaurantList', restaurantList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompleteRestaurantDataOption &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.restaurantList, restaurantList) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantList, restaurantList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(restaurantList);

  @override
  _$CompleteRestaurantDataOptionCopyWith<_CompleteRestaurantDataOption>
      get copyWith => __$CompleteRestaurantDataOptionCopyWithImpl<
          _CompleteRestaurantDataOption>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result getRestarurantListOption(
            bool isLoading,
            Option<Either<RestaurantFailure, GetRestaurantListResponse>>
                restaurantList),
    @required
        Result completeRestaurantDataOption(
            bool isLoading,
            Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
                restaurantList),
  }) {
    assert(initial != null);
    assert(getRestarurantListOption != null);
    assert(completeRestaurantDataOption != null);
    return completeRestaurantDataOption(isLoading, restaurantList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getRestarurantListOption(
        bool isLoading,
        Option<Either<RestaurantFailure, GetRestaurantListResponse>>
            restaurantList),
    Result completeRestaurantDataOption(
        bool isLoading,
        Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
            restaurantList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completeRestaurantDataOption != null) {
      return completeRestaurantDataOption(isLoading, restaurantList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result getRestarurantListOption(_GetRestaurantListOption value),
    @required
        Result completeRestaurantDataOption(
            _CompleteRestaurantDataOption value),
  }) {
    assert(initial != null);
    assert(getRestarurantListOption != null);
    assert(completeRestaurantDataOption != null);
    return completeRestaurantDataOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result getRestarurantListOption(_GetRestaurantListOption value),
    Result completeRestaurantDataOption(_CompleteRestaurantDataOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completeRestaurantDataOption != null) {
      return completeRestaurantDataOption(this);
    }
    return orElse();
  }
}

abstract class _CompleteRestaurantDataOption implements RestaurantState {
  const factory _CompleteRestaurantDataOption(
      {@required
          bool isLoading,
      @required
          Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
              restaurantList}) = _$_CompleteRestaurantDataOption;

  bool get isLoading;
  Option<Either<RestaurantFailure, GetAllRestaurantDataResponse>>
      get restaurantList;
  _$CompleteRestaurantDataOptionCopyWith<_CompleteRestaurantDataOption>
      get copyWith;
}
