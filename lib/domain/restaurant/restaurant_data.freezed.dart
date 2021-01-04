// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RestaurantData _$RestaurantDataFromJson(Map<String, dynamic> json) {
  return RestaurantDataList.fromJson(json);
}

/// @nodoc
class _$RestaurantDataTearOff {
  const _$RestaurantDataTearOff();

// ignore: unused_element
  RestaurantDataList restaurantDataList(
      {String id,
      @JsonKey(name: 'owner_id') String ownerId,
      String name,
      String address,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String instagram,
      String lat,
      String lng,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt}) {
    return RestaurantDataList(
      id: id,
      ownerId: ownerId,
      name: name,
      address: address,
      phoneNumber: phoneNumber,
      instagram: instagram,
      lat: lat,
      lng: lng,
      logoUrl: logoUrl,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  RestaurantData fromJson(Map<String, Object> json) {
    return RestaurantData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RestaurantData = _$RestaurantDataTearOff();

/// @nodoc
mixin _$RestaurantData {
  String get id;
  @JsonKey(name: 'owner_id')
  String get ownerId;
  String get name;
  String get address;
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  String get instagram;
  String get lat;
  String get lng;
  @JsonKey(name: 'logo_url')
  String get logoUrl;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult restaurantDataList(
            String id,
            @JsonKey(name: 'owner_id') String ownerId,
            String name,
            String address,
            @JsonKey(name: 'phone_number') String phoneNumber,
            String instagram,
            String lat,
            String lng,
            @JsonKey(name: 'logo_url') String logoUrl,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult restaurantDataList(
        String id,
        @JsonKey(name: 'owner_id') String ownerId,
        String name,
        String address,
        @JsonKey(name: 'phone_number') String phoneNumber,
        String instagram,
        String lat,
        String lng,
        @JsonKey(name: 'logo_url') String logoUrl,
        @JsonKey(name: 'created_at') String createdAt,
        @JsonKey(name: 'updated_at') String updatedAt),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult restaurantDataList(RestaurantDataList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult restaurantDataList(RestaurantDataList value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  $RestaurantDataCopyWith<RestaurantData> get copyWith;
}

/// @nodoc
abstract class $RestaurantDataCopyWith<$Res> {
  factory $RestaurantDataCopyWith(
          RestaurantData value, $Res Function(RestaurantData) then) =
      _$RestaurantDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'owner_id') String ownerId,
      String name,
      String address,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String instagram,
      String lat,
      String lng,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$RestaurantDataCopyWithImpl<$Res>
    implements $RestaurantDataCopyWith<$Res> {
  _$RestaurantDataCopyWithImpl(this._value, this._then);

  final RestaurantData _value;
  // ignore: unused_field
  final $Res Function(RestaurantData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object ownerId = freezed,
    Object name = freezed,
    Object address = freezed,
    Object phoneNumber = freezed,
    Object instagram = freezed,
    Object lat = freezed,
    Object lng = freezed,
    Object logoUrl = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      ownerId: ownerId == freezed ? _value.ownerId : ownerId as String,
      name: name == freezed ? _value.name : name as String,
      address: address == freezed ? _value.address : address as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      instagram: instagram == freezed ? _value.instagram : instagram as String,
      lat: lat == freezed ? _value.lat : lat as String,
      lng: lng == freezed ? _value.lng : lng as String,
      logoUrl: logoUrl == freezed ? _value.logoUrl : logoUrl as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
    ));
  }
}

/// @nodoc
abstract class $RestaurantDataListCopyWith<$Res>
    implements $RestaurantDataCopyWith<$Res> {
  factory $RestaurantDataListCopyWith(
          RestaurantDataList value, $Res Function(RestaurantDataList) then) =
      _$RestaurantDataListCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'owner_id') String ownerId,
      String name,
      String address,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String instagram,
      String lat,
      String lng,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$RestaurantDataListCopyWithImpl<$Res>
    extends _$RestaurantDataCopyWithImpl<$Res>
    implements $RestaurantDataListCopyWith<$Res> {
  _$RestaurantDataListCopyWithImpl(
      RestaurantDataList _value, $Res Function(RestaurantDataList) _then)
      : super(_value, (v) => _then(v as RestaurantDataList));

  @override
  RestaurantDataList get _value => super._value as RestaurantDataList;

  @override
  $Res call({
    Object id = freezed,
    Object ownerId = freezed,
    Object name = freezed,
    Object address = freezed,
    Object phoneNumber = freezed,
    Object instagram = freezed,
    Object lat = freezed,
    Object lng = freezed,
    Object logoUrl = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(RestaurantDataList(
      id: id == freezed ? _value.id : id as String,
      ownerId: ownerId == freezed ? _value.ownerId : ownerId as String,
      name: name == freezed ? _value.name : name as String,
      address: address == freezed ? _value.address : address as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      instagram: instagram == freezed ? _value.instagram : instagram as String,
      lat: lat == freezed ? _value.lat : lat as String,
      lng: lng == freezed ? _value.lng : lng as String,
      logoUrl: logoUrl == freezed ? _value.logoUrl : logoUrl as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$RestaurantDataList implements RestaurantDataList {
  const _$RestaurantDataList(
      {this.id,
      @JsonKey(name: 'owner_id') this.ownerId,
      this.name,
      this.address,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.instagram,
      this.lat,
      this.lng,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$RestaurantDataList.fromJson(Map<String, dynamic> json) =>
      _$_$RestaurantDataListFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'owner_id')
  final String ownerId;
  @override
  final String name;
  @override
  final String address;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  final String instagram;
  @override
  final String lat;
  @override
  final String lng;
  @override
  @JsonKey(name: 'logo_url')
  final String logoUrl;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'RestaurantData.restaurantDataList(id: $id, ownerId: $ownerId, name: $name, address: $address, phoneNumber: $phoneNumber, instagram: $instagram, lat: $lat, lng: $lng, logoUrl: $logoUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RestaurantDataList &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.instagram, instagram) ||
                const DeepCollectionEquality()
                    .equals(other.instagram, instagram)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.logoUrl, logoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.logoUrl, logoUrl)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(instagram) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(logoUrl) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  $RestaurantDataListCopyWith<RestaurantDataList> get copyWith =>
      _$RestaurantDataListCopyWithImpl<RestaurantDataList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult restaurantDataList(
            String id,
            @JsonKey(name: 'owner_id') String ownerId,
            String name,
            String address,
            @JsonKey(name: 'phone_number') String phoneNumber,
            String instagram,
            String lat,
            String lng,
            @JsonKey(name: 'logo_url') String logoUrl,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt),
  }) {
    assert(restaurantDataList != null);
    return restaurantDataList(id, ownerId, name, address, phoneNumber,
        instagram, lat, lng, logoUrl, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult restaurantDataList(
        String id,
        @JsonKey(name: 'owner_id') String ownerId,
        String name,
        String address,
        @JsonKey(name: 'phone_number') String phoneNumber,
        String instagram,
        String lat,
        String lng,
        @JsonKey(name: 'logo_url') String logoUrl,
        @JsonKey(name: 'created_at') String createdAt,
        @JsonKey(name: 'updated_at') String updatedAt),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (restaurantDataList != null) {
      return restaurantDataList(id, ownerId, name, address, phoneNumber,
          instagram, lat, lng, logoUrl, createdAt, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult restaurantDataList(RestaurantDataList value),
  }) {
    assert(restaurantDataList != null);
    return restaurantDataList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult restaurantDataList(RestaurantDataList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (restaurantDataList != null) {
      return restaurantDataList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RestaurantDataListToJson(this);
  }
}

abstract class RestaurantDataList implements RestaurantData {
  const factory RestaurantDataList(
      {String id,
      @JsonKey(name: 'owner_id') String ownerId,
      String name,
      String address,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String instagram,
      String lat,
      String lng,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt}) = _$RestaurantDataList;

  factory RestaurantDataList.fromJson(Map<String, dynamic> json) =
      _$RestaurantDataList.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'owner_id')
  String get ownerId;
  @override
  String get name;
  @override
  String get address;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  String get instagram;
  @override
  String get lat;
  @override
  String get lng;
  @override
  @JsonKey(name: 'logo_url')
  String get logoUrl;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  $RestaurantDataListCopyWith<RestaurantDataList> get copyWith;
}
