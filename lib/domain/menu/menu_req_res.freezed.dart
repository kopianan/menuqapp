// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'menu_req_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MenuReqRes _$MenuReqResFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'menuResponse':
      return MenuResponse.fromJson(json);
    case 'menuRequestByNearby':
      return MenuRequestByNearby.fromJson(json);
    case 'menuBookResponse':
      return MenuBookResponse.fromJson(json);
    case 'menuBookResponseWithRestaurant':
      return MenuBookResponseWithRestaurant.fromJson(json);
    case 'menuBookRequest':
      return MenuBookRequest.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$MenuReqResTearOff {
  const _$MenuReqResTearOff();

// ignore: unused_element
  MenuResponse menuResponse({List<MenuClassData> data}) {
    return MenuResponse(
      data: data,
    );
  }

// ignore: unused_element
  MenuRequestByNearby menuRequestByNearby(
      {int paginate,
      int page,
      @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang}) {
    return MenuRequestByNearby(
      paginate: paginate,
      page: page,
      latLang: latLang,
    );
  }

// ignore: unused_element
  MenuBookResponse menuBookResponse({List<MenuBookData> data}) {
    return MenuBookResponse(
      data: data,
    );
  }

// ignore: unused_element
  MenuBookResponseWithRestaurant menuBookResponseWithRestaurant(
      {MenuClassData data}) {
    return MenuBookResponseWithRestaurant(
      data: data,
    );
  }

// ignore: unused_element
  MenuBookRequest menuBookRequest({int paginate, int page}) {
    return MenuBookRequest(
      paginate: paginate,
      page: page,
    );
  }

// ignore: unused_element
  MenuReqRes fromJson(Map<String, Object> json) {
    return MenuReqRes.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MenuReqRes = _$MenuReqResTearOff();

/// @nodoc
mixin _$MenuReqRes {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult menuResponse(List<MenuClassData> data),
    @required
        TResult menuRequestByNearby(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required TResult menuBookResponse(List<MenuBookData> data),
    @required TResult menuBookResponseWithRestaurant(MenuClassData data),
    @required TResult menuBookRequest(int paginate, int page),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuResponse(List<MenuClassData> data),
    TResult menuRequestByNearby(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    TResult menuBookResponse(List<MenuBookData> data),
    TResult menuBookResponseWithRestaurant(MenuClassData data),
    TResult menuBookRequest(int paginate, int page),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuResponse(MenuResponse value),
    @required TResult menuRequestByNearby(MenuRequestByNearby value),
    @required TResult menuBookResponse(MenuBookResponse value),
    @required
        TResult menuBookResponseWithRestaurant(
            MenuBookResponseWithRestaurant value),
    @required TResult menuBookRequest(MenuBookRequest value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuResponse(MenuResponse value),
    TResult menuRequestByNearby(MenuRequestByNearby value),
    TResult menuBookResponse(MenuBookResponse value),
    TResult menuBookResponseWithRestaurant(
        MenuBookResponseWithRestaurant value),
    TResult menuBookRequest(MenuBookRequest value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $MenuReqResCopyWith<$Res> {
  factory $MenuReqResCopyWith(
          MenuReqRes value, $Res Function(MenuReqRes) then) =
      _$MenuReqResCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuReqResCopyWithImpl<$Res> implements $MenuReqResCopyWith<$Res> {
  _$MenuReqResCopyWithImpl(this._value, this._then);

  final MenuReqRes _value;
  // ignore: unused_field
  final $Res Function(MenuReqRes) _then;
}

/// @nodoc
abstract class $MenuResponseCopyWith<$Res> {
  factory $MenuResponseCopyWith(
          MenuResponse value, $Res Function(MenuResponse) then) =
      _$MenuResponseCopyWithImpl<$Res>;
  $Res call({List<MenuClassData> data});
}

/// @nodoc
class _$MenuResponseCopyWithImpl<$Res> extends _$MenuReqResCopyWithImpl<$Res>
    implements $MenuResponseCopyWith<$Res> {
  _$MenuResponseCopyWithImpl(
      MenuResponse _value, $Res Function(MenuResponse) _then)
      : super(_value, (v) => _then(v as MenuResponse));

  @override
  MenuResponse get _value => super._value as MenuResponse;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(MenuResponse(
      data: data == freezed ? _value.data : data as List<MenuClassData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MenuResponse implements MenuResponse {
  const _$MenuResponse({this.data});

  factory _$MenuResponse.fromJson(Map<String, dynamic> json) =>
      _$_$MenuResponseFromJson(json);

  @override
  final List<MenuClassData> data;

  @override
  String toString() {
    return 'MenuReqRes.menuResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $MenuResponseCopyWith<MenuResponse> get copyWith =>
      _$MenuResponseCopyWithImpl<MenuResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult menuResponse(List<MenuClassData> data),
    @required
        TResult menuRequestByNearby(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required TResult menuBookResponse(List<MenuBookData> data),
    @required TResult menuBookResponseWithRestaurant(MenuClassData data),
    @required TResult menuBookRequest(int paginate, int page),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuResponse(List<MenuClassData> data),
    TResult menuRequestByNearby(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    TResult menuBookResponse(List<MenuBookData> data),
    TResult menuBookResponseWithRestaurant(MenuClassData data),
    TResult menuBookRequest(int paginate, int page),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuResponse != null) {
      return menuResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuResponse(MenuResponse value),
    @required TResult menuRequestByNearby(MenuRequestByNearby value),
    @required TResult menuBookResponse(MenuBookResponse value),
    @required
        TResult menuBookResponseWithRestaurant(
            MenuBookResponseWithRestaurant value),
    @required TResult menuBookRequest(MenuBookRequest value),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuResponse(MenuResponse value),
    TResult menuRequestByNearby(MenuRequestByNearby value),
    TResult menuBookResponse(MenuBookResponse value),
    TResult menuBookResponseWithRestaurant(
        MenuBookResponseWithRestaurant value),
    TResult menuBookRequest(MenuBookRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuResponse != null) {
      return menuResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MenuResponseToJson(this)..['runtimeType'] = 'menuResponse';
  }
}

abstract class MenuResponse implements MenuReqRes {
  const factory MenuResponse({List<MenuClassData> data}) = _$MenuResponse;

  factory MenuResponse.fromJson(Map<String, dynamic> json) =
      _$MenuResponse.fromJson;

  List<MenuClassData> get data;
  $MenuResponseCopyWith<MenuResponse> get copyWith;
}

/// @nodoc
abstract class $MenuRequestByNearbyCopyWith<$Res> {
  factory $MenuRequestByNearbyCopyWith(
          MenuRequestByNearby value, $Res Function(MenuRequestByNearby) then) =
      _$MenuRequestByNearbyCopyWithImpl<$Res>;
  $Res call(
      {int paginate,
      int page,
      @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang});
}

/// @nodoc
class _$MenuRequestByNearbyCopyWithImpl<$Res>
    extends _$MenuReqResCopyWithImpl<$Res>
    implements $MenuRequestByNearbyCopyWith<$Res> {
  _$MenuRequestByNearbyCopyWithImpl(
      MenuRequestByNearby _value, $Res Function(MenuRequestByNearby) _then)
      : super(_value, (v) => _then(v as MenuRequestByNearby));

  @override
  MenuRequestByNearby get _value => super._value as MenuRequestByNearby;

  @override
  $Res call({
    Object paginate = freezed,
    Object page = freezed,
    Object latLang = freezed,
  }) {
    return _then(MenuRequestByNearby(
      paginate: paginate == freezed ? _value.paginate : paginate as int,
      page: page == freezed ? _value.page : page as int,
      latLang: latLang == freezed ? _value.latLang : latLang as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MenuRequestByNearby implements MenuRequestByNearby {
  const _$MenuRequestByNearby(
      {this.paginate,
      this.page,
      @JsonKey(name: 'order_by_nearest_to_lat_lng') this.latLang});

  factory _$MenuRequestByNearby.fromJson(Map<String, dynamic> json) =>
      _$_$MenuRequestByNearbyFromJson(json);

  @override
  final int paginate;
  @override
  final int page;
  @override
  @JsonKey(name: 'order_by_nearest_to_lat_lng')
  final String latLang;

  @override
  String toString() {
    return 'MenuReqRes.menuRequestByNearby(paginate: $paginate, page: $page, latLang: $latLang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuRequestByNearby &&
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
  $MenuRequestByNearbyCopyWith<MenuRequestByNearby> get copyWith =>
      _$MenuRequestByNearbyCopyWithImpl<MenuRequestByNearby>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult menuResponse(List<MenuClassData> data),
    @required
        TResult menuRequestByNearby(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required TResult menuBookResponse(List<MenuBookData> data),
    @required TResult menuBookResponseWithRestaurant(MenuClassData data),
    @required TResult menuBookRequest(int paginate, int page),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuRequestByNearby(paginate, page, latLang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuResponse(List<MenuClassData> data),
    TResult menuRequestByNearby(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    TResult menuBookResponse(List<MenuBookData> data),
    TResult menuBookResponseWithRestaurant(MenuClassData data),
    TResult menuBookRequest(int paginate, int page),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuRequestByNearby != null) {
      return menuRequestByNearby(paginate, page, latLang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuResponse(MenuResponse value),
    @required TResult menuRequestByNearby(MenuRequestByNearby value),
    @required TResult menuBookResponse(MenuBookResponse value),
    @required
        TResult menuBookResponseWithRestaurant(
            MenuBookResponseWithRestaurant value),
    @required TResult menuBookRequest(MenuBookRequest value),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuRequestByNearby(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuResponse(MenuResponse value),
    TResult menuRequestByNearby(MenuRequestByNearby value),
    TResult menuBookResponse(MenuBookResponse value),
    TResult menuBookResponseWithRestaurant(
        MenuBookResponseWithRestaurant value),
    TResult menuBookRequest(MenuBookRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuRequestByNearby != null) {
      return menuRequestByNearby(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MenuRequestByNearbyToJson(this)
      ..['runtimeType'] = 'menuRequestByNearby';
  }
}

abstract class MenuRequestByNearby implements MenuReqRes {
  const factory MenuRequestByNearby(
          {int paginate,
          int page,
          @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang}) =
      _$MenuRequestByNearby;

  factory MenuRequestByNearby.fromJson(Map<String, dynamic> json) =
      _$MenuRequestByNearby.fromJson;

  int get paginate;
  int get page;
  @JsonKey(name: 'order_by_nearest_to_lat_lng')
  String get latLang;
  $MenuRequestByNearbyCopyWith<MenuRequestByNearby> get copyWith;
}

/// @nodoc
abstract class $MenuBookResponseCopyWith<$Res> {
  factory $MenuBookResponseCopyWith(
          MenuBookResponse value, $Res Function(MenuBookResponse) then) =
      _$MenuBookResponseCopyWithImpl<$Res>;
  $Res call({List<MenuBookData> data});
}

/// @nodoc
class _$MenuBookResponseCopyWithImpl<$Res>
    extends _$MenuReqResCopyWithImpl<$Res>
    implements $MenuBookResponseCopyWith<$Res> {
  _$MenuBookResponseCopyWithImpl(
      MenuBookResponse _value, $Res Function(MenuBookResponse) _then)
      : super(_value, (v) => _then(v as MenuBookResponse));

  @override
  MenuBookResponse get _value => super._value as MenuBookResponse;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(MenuBookResponse(
      data: data == freezed ? _value.data : data as List<MenuBookData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MenuBookResponse implements MenuBookResponse {
  const _$MenuBookResponse({this.data});

  factory _$MenuBookResponse.fromJson(Map<String, dynamic> json) =>
      _$_$MenuBookResponseFromJson(json);

  @override
  final List<MenuBookData> data;

  @override
  String toString() {
    return 'MenuReqRes.menuBookResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuBookResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $MenuBookResponseCopyWith<MenuBookResponse> get copyWith =>
      _$MenuBookResponseCopyWithImpl<MenuBookResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult menuResponse(List<MenuClassData> data),
    @required
        TResult menuRequestByNearby(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required TResult menuBookResponse(List<MenuBookData> data),
    @required TResult menuBookResponseWithRestaurant(MenuClassData data),
    @required TResult menuBookRequest(int paginate, int page),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuBookResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuResponse(List<MenuClassData> data),
    TResult menuRequestByNearby(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    TResult menuBookResponse(List<MenuBookData> data),
    TResult menuBookResponseWithRestaurant(MenuClassData data),
    TResult menuBookRequest(int paginate, int page),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuBookResponse != null) {
      return menuBookResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuResponse(MenuResponse value),
    @required TResult menuRequestByNearby(MenuRequestByNearby value),
    @required TResult menuBookResponse(MenuBookResponse value),
    @required
        TResult menuBookResponseWithRestaurant(
            MenuBookResponseWithRestaurant value),
    @required TResult menuBookRequest(MenuBookRequest value),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuBookResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuResponse(MenuResponse value),
    TResult menuRequestByNearby(MenuRequestByNearby value),
    TResult menuBookResponse(MenuBookResponse value),
    TResult menuBookResponseWithRestaurant(
        MenuBookResponseWithRestaurant value),
    TResult menuBookRequest(MenuBookRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuBookResponse != null) {
      return menuBookResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MenuBookResponseToJson(this)
      ..['runtimeType'] = 'menuBookResponse';
  }
}

abstract class MenuBookResponse implements MenuReqRes {
  const factory MenuBookResponse({List<MenuBookData> data}) =
      _$MenuBookResponse;

  factory MenuBookResponse.fromJson(Map<String, dynamic> json) =
      _$MenuBookResponse.fromJson;

  List<MenuBookData> get data;
  $MenuBookResponseCopyWith<MenuBookResponse> get copyWith;
}

/// @nodoc
abstract class $MenuBookResponseWithRestaurantCopyWith<$Res> {
  factory $MenuBookResponseWithRestaurantCopyWith(
          MenuBookResponseWithRestaurant value,
          $Res Function(MenuBookResponseWithRestaurant) then) =
      _$MenuBookResponseWithRestaurantCopyWithImpl<$Res>;
  $Res call({MenuClassData data});
}

/// @nodoc
class _$MenuBookResponseWithRestaurantCopyWithImpl<$Res>
    extends _$MenuReqResCopyWithImpl<$Res>
    implements $MenuBookResponseWithRestaurantCopyWith<$Res> {
  _$MenuBookResponseWithRestaurantCopyWithImpl(
      MenuBookResponseWithRestaurant _value,
      $Res Function(MenuBookResponseWithRestaurant) _then)
      : super(_value, (v) => _then(v as MenuBookResponseWithRestaurant));

  @override
  MenuBookResponseWithRestaurant get _value =>
      super._value as MenuBookResponseWithRestaurant;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(MenuBookResponseWithRestaurant(
      data: data == freezed ? _value.data : data as MenuClassData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MenuBookResponseWithRestaurant
    implements MenuBookResponseWithRestaurant {
  const _$MenuBookResponseWithRestaurant({this.data});

  factory _$MenuBookResponseWithRestaurant.fromJson(
          Map<String, dynamic> json) =>
      _$_$MenuBookResponseWithRestaurantFromJson(json);

  @override
  final MenuClassData data;

  @override
  String toString() {
    return 'MenuReqRes.menuBookResponseWithRestaurant(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuBookResponseWithRestaurant &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $MenuBookResponseWithRestaurantCopyWith<MenuBookResponseWithRestaurant>
      get copyWith => _$MenuBookResponseWithRestaurantCopyWithImpl<
          MenuBookResponseWithRestaurant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult menuResponse(List<MenuClassData> data),
    @required
        TResult menuRequestByNearby(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required TResult menuBookResponse(List<MenuBookData> data),
    @required TResult menuBookResponseWithRestaurant(MenuClassData data),
    @required TResult menuBookRequest(int paginate, int page),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuBookResponseWithRestaurant(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuResponse(List<MenuClassData> data),
    TResult menuRequestByNearby(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    TResult menuBookResponse(List<MenuBookData> data),
    TResult menuBookResponseWithRestaurant(MenuClassData data),
    TResult menuBookRequest(int paginate, int page),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuBookResponseWithRestaurant != null) {
      return menuBookResponseWithRestaurant(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuResponse(MenuResponse value),
    @required TResult menuRequestByNearby(MenuRequestByNearby value),
    @required TResult menuBookResponse(MenuBookResponse value),
    @required
        TResult menuBookResponseWithRestaurant(
            MenuBookResponseWithRestaurant value),
    @required TResult menuBookRequest(MenuBookRequest value),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuBookResponseWithRestaurant(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuResponse(MenuResponse value),
    TResult menuRequestByNearby(MenuRequestByNearby value),
    TResult menuBookResponse(MenuBookResponse value),
    TResult menuBookResponseWithRestaurant(
        MenuBookResponseWithRestaurant value),
    TResult menuBookRequest(MenuBookRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuBookResponseWithRestaurant != null) {
      return menuBookResponseWithRestaurant(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MenuBookResponseWithRestaurantToJson(this)
      ..['runtimeType'] = 'menuBookResponseWithRestaurant';
  }
}

abstract class MenuBookResponseWithRestaurant implements MenuReqRes {
  const factory MenuBookResponseWithRestaurant({MenuClassData data}) =
      _$MenuBookResponseWithRestaurant;

  factory MenuBookResponseWithRestaurant.fromJson(Map<String, dynamic> json) =
      _$MenuBookResponseWithRestaurant.fromJson;

  MenuClassData get data;
  $MenuBookResponseWithRestaurantCopyWith<MenuBookResponseWithRestaurant>
      get copyWith;
}

/// @nodoc
abstract class $MenuBookRequestCopyWith<$Res> {
  factory $MenuBookRequestCopyWith(
          MenuBookRequest value, $Res Function(MenuBookRequest) then) =
      _$MenuBookRequestCopyWithImpl<$Res>;
  $Res call({int paginate, int page});
}

/// @nodoc
class _$MenuBookRequestCopyWithImpl<$Res> extends _$MenuReqResCopyWithImpl<$Res>
    implements $MenuBookRequestCopyWith<$Res> {
  _$MenuBookRequestCopyWithImpl(
      MenuBookRequest _value, $Res Function(MenuBookRequest) _then)
      : super(_value, (v) => _then(v as MenuBookRequest));

  @override
  MenuBookRequest get _value => super._value as MenuBookRequest;

  @override
  $Res call({
    Object paginate = freezed,
    Object page = freezed,
  }) {
    return _then(MenuBookRequest(
      paginate: paginate == freezed ? _value.paginate : paginate as int,
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MenuBookRequest implements MenuBookRequest {
  const _$MenuBookRequest({this.paginate, this.page});

  factory _$MenuBookRequest.fromJson(Map<String, dynamic> json) =>
      _$_$MenuBookRequestFromJson(json);

  @override
  final int paginate;
  @override
  final int page;

  @override
  String toString() {
    return 'MenuReqRes.menuBookRequest(paginate: $paginate, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuBookRequest &&
            (identical(other.paginate, paginate) ||
                const DeepCollectionEquality()
                    .equals(other.paginate, paginate)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paginate) ^
      const DeepCollectionEquality().hash(page);

  @override
  $MenuBookRequestCopyWith<MenuBookRequest> get copyWith =>
      _$MenuBookRequestCopyWithImpl<MenuBookRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult menuResponse(List<MenuClassData> data),
    @required
        TResult menuRequestByNearby(int paginate, int page,
            @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    @required TResult menuBookResponse(List<MenuBookData> data),
    @required TResult menuBookResponseWithRestaurant(MenuClassData data),
    @required TResult menuBookRequest(int paginate, int page),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuBookRequest(paginate, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuResponse(List<MenuClassData> data),
    TResult menuRequestByNearby(int paginate, int page,
        @JsonKey(name: 'order_by_nearest_to_lat_lng') String latLang),
    TResult menuBookResponse(List<MenuBookData> data),
    TResult menuBookResponseWithRestaurant(MenuClassData data),
    TResult menuBookRequest(int paginate, int page),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuBookRequest != null) {
      return menuBookRequest(paginate, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuResponse(MenuResponse value),
    @required TResult menuRequestByNearby(MenuRequestByNearby value),
    @required TResult menuBookResponse(MenuBookResponse value),
    @required
        TResult menuBookResponseWithRestaurant(
            MenuBookResponseWithRestaurant value),
    @required TResult menuBookRequest(MenuBookRequest value),
  }) {
    assert(menuResponse != null);
    assert(menuRequestByNearby != null);
    assert(menuBookResponse != null);
    assert(menuBookResponseWithRestaurant != null);
    assert(menuBookRequest != null);
    return menuBookRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuResponse(MenuResponse value),
    TResult menuRequestByNearby(MenuRequestByNearby value),
    TResult menuBookResponse(MenuBookResponse value),
    TResult menuBookResponseWithRestaurant(
        MenuBookResponseWithRestaurant value),
    TResult menuBookRequest(MenuBookRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuBookRequest != null) {
      return menuBookRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MenuBookRequestToJson(this)..['runtimeType'] = 'menuBookRequest';
  }
}

abstract class MenuBookRequest implements MenuReqRes {
  const factory MenuBookRequest({int paginate, int page}) = _$MenuBookRequest;

  factory MenuBookRequest.fromJson(Map<String, dynamic> json) =
      _$MenuBookRequest.fromJson;

  int get paginate;
  int get page;
  $MenuBookRequestCopyWith<MenuBookRequest> get copyWith;
}
