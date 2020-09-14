// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'restaurant_req_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RestaurantReqRes _$RestaurantReqResFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'getRestaurantListResponse':
      return GetRestaurantListResponse.fromJson(json);
    case 'getAllRestaurantDataResponse':
      return GetAllRestaurantDataResponse.fromJson(json);
    case 'getRestaurantListRequest':
      return GetRestaurantListRequest.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$RestaurantReqResTearOff {
  const _$RestaurantReqResTearOff();

  GetRestaurantListResponse getRestaurantListResponse(
      {List<RestaurantData> data}) {
    return GetRestaurantListResponse(
      data: data,
    );
  }

  GetAllRestaurantDataResponse getAllRestaurantDataResponse(
      SingleRestaurantCompleteData data) {
    return GetAllRestaurantDataResponse(
      data,
    );
  }

  GetRestaurantListRequest getRestaurantListRequest(
      {@required int paginate,
      @required int page,
      @required @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang}) {
    return GetRestaurantListRequest(
      paginate: paginate,
      page: page,
      latLang: latLang,
    );
  }
}

// ignore: unused_element
const $RestaurantReqRes = _$RestaurantReqResTearOff();

mixin _$RestaurantReqRes {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRestaurantListResponse(List<RestaurantData> data),
    @required
        Result getAllRestaurantDataResponse(SingleRestaurantCompleteData data),
    @required
        Result getRestaurantListRequest(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRestaurantListResponse(List<RestaurantData> data),
    Result getAllRestaurantDataResponse(SingleRestaurantCompleteData data),
    Result getRestaurantListRequest(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getRestaurantListResponse(GetRestaurantListResponse value),
    @required
        Result getAllRestaurantDataResponse(GetAllRestaurantDataResponse value),
    @required Result getRestaurantListRequest(GetRestaurantListRequest value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRestaurantListResponse(GetRestaurantListResponse value),
    Result getAllRestaurantDataResponse(GetAllRestaurantDataResponse value),
    Result getRestaurantListRequest(GetRestaurantListRequest value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $RestaurantReqResCopyWith<$Res> {
  factory $RestaurantReqResCopyWith(
          RestaurantReqRes value, $Res Function(RestaurantReqRes) then) =
      _$RestaurantReqResCopyWithImpl<$Res>;
}

class _$RestaurantReqResCopyWithImpl<$Res>
    implements $RestaurantReqResCopyWith<$Res> {
  _$RestaurantReqResCopyWithImpl(this._value, this._then);

  final RestaurantReqRes _value;
  // ignore: unused_field
  final $Res Function(RestaurantReqRes) _then;
}

abstract class $GetRestaurantListResponseCopyWith<$Res> {
  factory $GetRestaurantListResponseCopyWith(GetRestaurantListResponse value,
          $Res Function(GetRestaurantListResponse) then) =
      _$GetRestaurantListResponseCopyWithImpl<$Res>;
  $Res call({List<RestaurantData> data});
}

class _$GetRestaurantListResponseCopyWithImpl<$Res>
    extends _$RestaurantReqResCopyWithImpl<$Res>
    implements $GetRestaurantListResponseCopyWith<$Res> {
  _$GetRestaurantListResponseCopyWithImpl(GetRestaurantListResponse _value,
      $Res Function(GetRestaurantListResponse) _then)
      : super(_value, (v) => _then(v as GetRestaurantListResponse));

  @override
  GetRestaurantListResponse get _value =>
      super._value as GetRestaurantListResponse;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(GetRestaurantListResponse(
      data: data == freezed ? _value.data : data as List<RestaurantData>,
    ));
  }
}

@JsonSerializable()
class _$GetRestaurantListResponse implements GetRestaurantListResponse {
  const _$GetRestaurantListResponse({this.data});

  factory _$GetRestaurantListResponse.fromJson(Map<String, dynamic> json) =>
      _$_$GetRestaurantListResponseFromJson(json);

  @override
  final List<RestaurantData> data;

  @override
  String toString() {
    return 'RestaurantReqRes.getRestaurantListResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetRestaurantListResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $GetRestaurantListResponseCopyWith<GetRestaurantListResponse> get copyWith =>
      _$GetRestaurantListResponseCopyWithImpl<GetRestaurantListResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRestaurantListResponse(List<RestaurantData> data),
    @required
        Result getAllRestaurantDataResponse(SingleRestaurantCompleteData data),
    @required
        Result getRestaurantListRequest(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
  }) {
    assert(getRestaurantListResponse != null);
    assert(getAllRestaurantDataResponse != null);
    assert(getRestaurantListRequest != null);
    return getRestaurantListResponse(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRestaurantListResponse(List<RestaurantData> data),
    Result getAllRestaurantDataResponse(SingleRestaurantCompleteData data),
    Result getRestaurantListRequest(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRestaurantListResponse != null) {
      return getRestaurantListResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getRestaurantListResponse(GetRestaurantListResponse value),
    @required
        Result getAllRestaurantDataResponse(GetAllRestaurantDataResponse value),
    @required Result getRestaurantListRequest(GetRestaurantListRequest value),
  }) {
    assert(getRestaurantListResponse != null);
    assert(getAllRestaurantDataResponse != null);
    assert(getRestaurantListRequest != null);
    return getRestaurantListResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRestaurantListResponse(GetRestaurantListResponse value),
    Result getAllRestaurantDataResponse(GetAllRestaurantDataResponse value),
    Result getRestaurantListRequest(GetRestaurantListRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRestaurantListResponse != null) {
      return getRestaurantListResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GetRestaurantListResponseToJson(this)
      ..['runtimeType'] = 'getRestaurantListResponse';
  }
}

abstract class GetRestaurantListResponse implements RestaurantReqRes {
  const factory GetRestaurantListResponse({List<RestaurantData> data}) =
      _$GetRestaurantListResponse;

  factory GetRestaurantListResponse.fromJson(Map<String, dynamic> json) =
      _$GetRestaurantListResponse.fromJson;

  List<RestaurantData> get data;
  $GetRestaurantListResponseCopyWith<GetRestaurantListResponse> get copyWith;
}

abstract class $GetAllRestaurantDataResponseCopyWith<$Res> {
  factory $GetAllRestaurantDataResponseCopyWith(
          GetAllRestaurantDataResponse value,
          $Res Function(GetAllRestaurantDataResponse) then) =
      _$GetAllRestaurantDataResponseCopyWithImpl<$Res>;
  $Res call({SingleRestaurantCompleteData data});
}

class _$GetAllRestaurantDataResponseCopyWithImpl<$Res>
    extends _$RestaurantReqResCopyWithImpl<$Res>
    implements $GetAllRestaurantDataResponseCopyWith<$Res> {
  _$GetAllRestaurantDataResponseCopyWithImpl(
      GetAllRestaurantDataResponse _value,
      $Res Function(GetAllRestaurantDataResponse) _then)
      : super(_value, (v) => _then(v as GetAllRestaurantDataResponse));

  @override
  GetAllRestaurantDataResponse get _value =>
      super._value as GetAllRestaurantDataResponse;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(GetAllRestaurantDataResponse(
      data == freezed ? _value.data : data as SingleRestaurantCompleteData,
    ));
  }
}

@JsonSerializable()
class _$GetAllRestaurantDataResponse implements GetAllRestaurantDataResponse {
  const _$GetAllRestaurantDataResponse(this.data) : assert(data != null);

  factory _$GetAllRestaurantDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$GetAllRestaurantDataResponseFromJson(json);

  @override
  final SingleRestaurantCompleteData data;

  @override
  String toString() {
    return 'RestaurantReqRes.getAllRestaurantDataResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllRestaurantDataResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $GetAllRestaurantDataResponseCopyWith<GetAllRestaurantDataResponse>
      get copyWith => _$GetAllRestaurantDataResponseCopyWithImpl<
          GetAllRestaurantDataResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRestaurantListResponse(List<RestaurantData> data),
    @required
        Result getAllRestaurantDataResponse(SingleRestaurantCompleteData data),
    @required
        Result getRestaurantListRequest(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
  }) {
    assert(getRestaurantListResponse != null);
    assert(getAllRestaurantDataResponse != null);
    assert(getRestaurantListRequest != null);
    return getAllRestaurantDataResponse(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRestaurantListResponse(List<RestaurantData> data),
    Result getAllRestaurantDataResponse(SingleRestaurantCompleteData data),
    Result getRestaurantListRequest(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllRestaurantDataResponse != null) {
      return getAllRestaurantDataResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getRestaurantListResponse(GetRestaurantListResponse value),
    @required
        Result getAllRestaurantDataResponse(GetAllRestaurantDataResponse value),
    @required Result getRestaurantListRequest(GetRestaurantListRequest value),
  }) {
    assert(getRestaurantListResponse != null);
    assert(getAllRestaurantDataResponse != null);
    assert(getRestaurantListRequest != null);
    return getAllRestaurantDataResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRestaurantListResponse(GetRestaurantListResponse value),
    Result getAllRestaurantDataResponse(GetAllRestaurantDataResponse value),
    Result getRestaurantListRequest(GetRestaurantListRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllRestaurantDataResponse != null) {
      return getAllRestaurantDataResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GetAllRestaurantDataResponseToJson(this)
      ..['runtimeType'] = 'getAllRestaurantDataResponse';
  }
}

abstract class GetAllRestaurantDataResponse implements RestaurantReqRes {
  const factory GetAllRestaurantDataResponse(
      SingleRestaurantCompleteData data) = _$GetAllRestaurantDataResponse;

  factory GetAllRestaurantDataResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllRestaurantDataResponse.fromJson;

  SingleRestaurantCompleteData get data;
  $GetAllRestaurantDataResponseCopyWith<GetAllRestaurantDataResponse>
      get copyWith;
}

abstract class $GetRestaurantListRequestCopyWith<$Res> {
  factory $GetRestaurantListRequestCopyWith(GetRestaurantListRequest value,
          $Res Function(GetRestaurantListRequest) then) =
      _$GetRestaurantListRequestCopyWithImpl<$Res>;
  $Res call(
      {int paginate,
      int page,
      @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang});
}

class _$GetRestaurantListRequestCopyWithImpl<$Res>
    extends _$RestaurantReqResCopyWithImpl<$Res>
    implements $GetRestaurantListRequestCopyWith<$Res> {
  _$GetRestaurantListRequestCopyWithImpl(GetRestaurantListRequest _value,
      $Res Function(GetRestaurantListRequest) _then)
      : super(_value, (v) => _then(v as GetRestaurantListRequest));

  @override
  GetRestaurantListRequest get _value =>
      super._value as GetRestaurantListRequest;

  @override
  $Res call({
    Object paginate = freezed,
    Object page = freezed,
    Object latLang = freezed,
  }) {
    return _then(GetRestaurantListRequest(
      paginate: paginate == freezed ? _value.paginate : paginate as int,
      page: page == freezed ? _value.page : page as int,
      latLang: latLang == freezed ? _value.latLang : latLang as String,
    ));
  }
}

@JsonSerializable()
class _$GetRestaurantListRequest implements GetRestaurantListRequest {
  const _$GetRestaurantListRequest(
      {@required this.paginate,
      @required this.page,
      @required @JsonKey(name: 'order_by_nearest_to_lat_lng') this.latLang})
      : assert(paginate != null),
        assert(page != null),
        assert(latLang != null);

  factory _$GetRestaurantListRequest.fromJson(Map<String, dynamic> json) =>
      _$_$GetRestaurantListRequestFromJson(json);

  @override
  final int paginate;
  @override
  final int page;
  @override
  @JsonKey(name: 'order_by_nearest_to_lat_lng')
  final String latLang;

  @override
  String toString() {
    return 'RestaurantReqRes.getRestaurantListRequest(paginate: $paginate, page: $page, latLang: $latLang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetRestaurantListRequest &&
            (identical(other.paginate, paginate) ||
                const DeepCollectionEquality()
                    .equals(other.paginate, paginate)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.latLang, latLang) ||
                const DeepCollectionEquality().equals(other.latLang, latLang)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paginate) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(latLang);

  @override
  $GetRestaurantListRequestCopyWith<GetRestaurantListRequest> get copyWith =>
      _$GetRestaurantListRequestCopyWithImpl<GetRestaurantListRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRestaurantListResponse(List<RestaurantData> data),
    @required
        Result getAllRestaurantDataResponse(SingleRestaurantCompleteData data),
    @required
        Result getRestaurantListRequest(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
  }) {
    assert(getRestaurantListResponse != null);
    assert(getAllRestaurantDataResponse != null);
    assert(getRestaurantListRequest != null);
    return getRestaurantListRequest(paginate, page, latLang);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRestaurantListResponse(List<RestaurantData> data),
    Result getAllRestaurantDataResponse(SingleRestaurantCompleteData data),
    Result getRestaurantListRequest(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRestaurantListRequest != null) {
      return getRestaurantListRequest(paginate, page, latLang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getRestaurantListResponse(GetRestaurantListResponse value),
    @required
        Result getAllRestaurantDataResponse(GetAllRestaurantDataResponse value),
    @required Result getRestaurantListRequest(GetRestaurantListRequest value),
  }) {
    assert(getRestaurantListResponse != null);
    assert(getAllRestaurantDataResponse != null);
    assert(getRestaurantListRequest != null);
    return getRestaurantListRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRestaurantListResponse(GetRestaurantListResponse value),
    Result getAllRestaurantDataResponse(GetAllRestaurantDataResponse value),
    Result getRestaurantListRequest(GetRestaurantListRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRestaurantListRequest != null) {
      return getRestaurantListRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GetRestaurantListRequestToJson(this)
      ..['runtimeType'] = 'getRestaurantListRequest';
  }
}

abstract class GetRestaurantListRequest implements RestaurantReqRes {
  const factory GetRestaurantListRequest(
      {@required
          int paginate,
      @required
          int page,
      @required
      @JsonKey(name: 'order_by_nearest_to_lat_lng')
          String latLang}) = _$GetRestaurantListRequest;

  factory GetRestaurantListRequest.fromJson(Map<String, dynamic> json) =
      _$GetRestaurantListRequest.fromJson;

  int get paginate;
  int get page;
  @JsonKey(name: 'order_by_nearest_to_lat_lng')
  String get latLang;
  $GetRestaurantListRequestCopyWith<GetRestaurantListRequest> get copyWith;
}
