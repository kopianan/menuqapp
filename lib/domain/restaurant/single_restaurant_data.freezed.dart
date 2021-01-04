// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'single_restaurant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SingleRestaurantData _$SingleRestaurantDataFromJson(Map<String, dynamic> json) {
  return SingleRestaurantCompleteData.fromJson(json);
}

/// @nodoc
class _$SingleRestaurantDataTearOff {
  const _$SingleRestaurantDataTearOff();

// ignore: unused_element
  SingleRestaurantCompleteData singleRestaurantCompleteData(
      {String id,
      @JsonKey(name: 'owner_id') String ownerId,
      String name,
      String address,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String instagram,
      String lat,
      String lng,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'menus') List<MenuClassData> menuClassDataList,
      @JsonKey(name: 'menuBooks') List<MenuBookData> menuBookDataList,
      @JsonKey(name: 'categories') List<CategoryDataClass> categoryList}) {
    return SingleRestaurantCompleteData(
      id: id,
      ownerId: ownerId,
      name: name,
      address: address,
      phoneNumber: phoneNumber,
      instagram: instagram,
      lat: lat,
      lng: lng,
      createdAt: createdAt,
      logoUrl: logoUrl,
      updatedAt: updatedAt,
      menuClassDataList: menuClassDataList,
      menuBookDataList: menuBookDataList,
      categoryList: categoryList,
    );
  }

// ignore: unused_element
  SingleRestaurantData fromJson(Map<String, Object> json) {
    return SingleRestaurantData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SingleRestaurantData = _$SingleRestaurantDataTearOff();

/// @nodoc
mixin _$SingleRestaurantData {
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
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'logo_url')
  String get logoUrl;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'menus')
  List<MenuClassData> get menuClassDataList;
  @JsonKey(name: 'menuBooks')
  List<MenuBookData> get menuBookDataList;
  @JsonKey(name: 'categories')
  List<CategoryDataClass> get categoryList;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult singleRestaurantCompleteData(
            String id,
            @JsonKey(name: 'owner_id') String ownerId,
            String name,
            String address,
            @JsonKey(name: 'phone_number') String phoneNumber,
            String instagram,
            String lat,
            String lng,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'logo_url') String logoUrl,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'menus') List<MenuClassData> menuClassDataList,
            @JsonKey(name: 'menuBooks') List<MenuBookData> menuBookDataList,
            @JsonKey(name: 'categories') List<CategoryDataClass> categoryList),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult singleRestaurantCompleteData(
        String id,
        @JsonKey(name: 'owner_id') String ownerId,
        String name,
        String address,
        @JsonKey(name: 'phone_number') String phoneNumber,
        String instagram,
        String lat,
        String lng,
        @JsonKey(name: 'created_at') String createdAt,
        @JsonKey(name: 'logo_url') String logoUrl,
        @JsonKey(name: 'updated_at') String updatedAt,
        @JsonKey(name: 'menus') List<MenuClassData> menuClassDataList,
        @JsonKey(name: 'menuBooks') List<MenuBookData> menuBookDataList,
        @JsonKey(name: 'categories') List<CategoryDataClass> categoryList),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult singleRestaurantCompleteData(
            SingleRestaurantCompleteData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult singleRestaurantCompleteData(SingleRestaurantCompleteData value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  $SingleRestaurantDataCopyWith<SingleRestaurantData> get copyWith;
}

/// @nodoc
abstract class $SingleRestaurantDataCopyWith<$Res> {
  factory $SingleRestaurantDataCopyWith(SingleRestaurantData value,
          $Res Function(SingleRestaurantData) then) =
      _$SingleRestaurantDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'owner_id') String ownerId,
      String name,
      String address,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String instagram,
      String lat,
      String lng,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'menus') List<MenuClassData> menuClassDataList,
      @JsonKey(name: 'menuBooks') List<MenuBookData> menuBookDataList,
      @JsonKey(name: 'categories') List<CategoryDataClass> categoryList});
}

/// @nodoc
class _$SingleRestaurantDataCopyWithImpl<$Res>
    implements $SingleRestaurantDataCopyWith<$Res> {
  _$SingleRestaurantDataCopyWithImpl(this._value, this._then);

  final SingleRestaurantData _value;
  // ignore: unused_field
  final $Res Function(SingleRestaurantData) _then;

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
    Object createdAt = freezed,
    Object logoUrl = freezed,
    Object updatedAt = freezed,
    Object menuClassDataList = freezed,
    Object menuBookDataList = freezed,
    Object categoryList = freezed,
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
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      logoUrl: logoUrl == freezed ? _value.logoUrl : logoUrl as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      menuClassDataList: menuClassDataList == freezed
          ? _value.menuClassDataList
          : menuClassDataList as List<MenuClassData>,
      menuBookDataList: menuBookDataList == freezed
          ? _value.menuBookDataList
          : menuBookDataList as List<MenuBookData>,
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList as List<CategoryDataClass>,
    ));
  }
}

/// @nodoc
abstract class $SingleRestaurantCompleteDataCopyWith<$Res>
    implements $SingleRestaurantDataCopyWith<$Res> {
  factory $SingleRestaurantCompleteDataCopyWith(
          SingleRestaurantCompleteData value,
          $Res Function(SingleRestaurantCompleteData) then) =
      _$SingleRestaurantCompleteDataCopyWithImpl<$Res>;
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
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'menus') List<MenuClassData> menuClassDataList,
      @JsonKey(name: 'menuBooks') List<MenuBookData> menuBookDataList,
      @JsonKey(name: 'categories') List<CategoryDataClass> categoryList});
}

/// @nodoc
class _$SingleRestaurantCompleteDataCopyWithImpl<$Res>
    extends _$SingleRestaurantDataCopyWithImpl<$Res>
    implements $SingleRestaurantCompleteDataCopyWith<$Res> {
  _$SingleRestaurantCompleteDataCopyWithImpl(
      SingleRestaurantCompleteData _value,
      $Res Function(SingleRestaurantCompleteData) _then)
      : super(_value, (v) => _then(v as SingleRestaurantCompleteData));

  @override
  SingleRestaurantCompleteData get _value =>
      super._value as SingleRestaurantCompleteData;

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
    Object createdAt = freezed,
    Object logoUrl = freezed,
    Object updatedAt = freezed,
    Object menuClassDataList = freezed,
    Object menuBookDataList = freezed,
    Object categoryList = freezed,
  }) {
    return _then(SingleRestaurantCompleteData(
      id: id == freezed ? _value.id : id as String,
      ownerId: ownerId == freezed ? _value.ownerId : ownerId as String,
      name: name == freezed ? _value.name : name as String,
      address: address == freezed ? _value.address : address as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      instagram: instagram == freezed ? _value.instagram : instagram as String,
      lat: lat == freezed ? _value.lat : lat as String,
      lng: lng == freezed ? _value.lng : lng as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      logoUrl: logoUrl == freezed ? _value.logoUrl : logoUrl as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      menuClassDataList: menuClassDataList == freezed
          ? _value.menuClassDataList
          : menuClassDataList as List<MenuClassData>,
      menuBookDataList: menuBookDataList == freezed
          ? _value.menuBookDataList
          : menuBookDataList as List<MenuBookData>,
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList as List<CategoryDataClass>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$SingleRestaurantCompleteData implements SingleRestaurantCompleteData {
  const _$SingleRestaurantCompleteData(
      {this.id,
      @JsonKey(name: 'owner_id') this.ownerId,
      this.name,
      this.address,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.instagram,
      this.lat,
      this.lng,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'menus') this.menuClassDataList,
      @JsonKey(name: 'menuBooks') this.menuBookDataList,
      @JsonKey(name: 'categories') this.categoryList});

  factory _$SingleRestaurantCompleteData.fromJson(Map<String, dynamic> json) =>
      _$_$SingleRestaurantCompleteDataFromJson(json);

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
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'logo_url')
  final String logoUrl;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'menus')
  final List<MenuClassData> menuClassDataList;
  @override
  @JsonKey(name: 'menuBooks')
  final List<MenuBookData> menuBookDataList;
  @override
  @JsonKey(name: 'categories')
  final List<CategoryDataClass> categoryList;

  @override
  String toString() {
    return 'SingleRestaurantData.singleRestaurantCompleteData(id: $id, ownerId: $ownerId, name: $name, address: $address, phoneNumber: $phoneNumber, instagram: $instagram, lat: $lat, lng: $lng, createdAt: $createdAt, logoUrl: $logoUrl, updatedAt: $updatedAt, menuClassDataList: $menuClassDataList, menuBookDataList: $menuBookDataList, categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SingleRestaurantCompleteData &&
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
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.logoUrl, logoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.logoUrl, logoUrl)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.menuClassDataList, menuClassDataList) ||
                const DeepCollectionEquality()
                    .equals(other.menuClassDataList, menuClassDataList)) &&
            (identical(other.menuBookDataList, menuBookDataList) ||
                const DeepCollectionEquality()
                    .equals(other.menuBookDataList, menuBookDataList)) &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality()
                    .equals(other.categoryList, categoryList)));
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
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(logoUrl) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(menuClassDataList) ^
      const DeepCollectionEquality().hash(menuBookDataList) ^
      const DeepCollectionEquality().hash(categoryList);

  @override
  $SingleRestaurantCompleteDataCopyWith<SingleRestaurantCompleteData>
      get copyWith => _$SingleRestaurantCompleteDataCopyWithImpl<
          SingleRestaurantCompleteData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult singleRestaurantCompleteData(
            String id,
            @JsonKey(name: 'owner_id') String ownerId,
            String name,
            String address,
            @JsonKey(name: 'phone_number') String phoneNumber,
            String instagram,
            String lat,
            String lng,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'logo_url') String logoUrl,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'menus') List<MenuClassData> menuClassDataList,
            @JsonKey(name: 'menuBooks') List<MenuBookData> menuBookDataList,
            @JsonKey(name: 'categories') List<CategoryDataClass> categoryList),
  }) {
    assert(singleRestaurantCompleteData != null);
    return singleRestaurantCompleteData(
        id,
        ownerId,
        name,
        address,
        phoneNumber,
        instagram,
        lat,
        lng,
        createdAt,
        logoUrl,
        updatedAt,
        menuClassDataList,
        menuBookDataList,
        categoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult singleRestaurantCompleteData(
        String id,
        @JsonKey(name: 'owner_id') String ownerId,
        String name,
        String address,
        @JsonKey(name: 'phone_number') String phoneNumber,
        String instagram,
        String lat,
        String lng,
        @JsonKey(name: 'created_at') String createdAt,
        @JsonKey(name: 'logo_url') String logoUrl,
        @JsonKey(name: 'updated_at') String updatedAt,
        @JsonKey(name: 'menus') List<MenuClassData> menuClassDataList,
        @JsonKey(name: 'menuBooks') List<MenuBookData> menuBookDataList,
        @JsonKey(name: 'categories') List<CategoryDataClass> categoryList),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (singleRestaurantCompleteData != null) {
      return singleRestaurantCompleteData(
          id,
          ownerId,
          name,
          address,
          phoneNumber,
          instagram,
          lat,
          lng,
          createdAt,
          logoUrl,
          updatedAt,
          menuClassDataList,
          menuBookDataList,
          categoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult singleRestaurantCompleteData(
            SingleRestaurantCompleteData value),
  }) {
    assert(singleRestaurantCompleteData != null);
    return singleRestaurantCompleteData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult singleRestaurantCompleteData(SingleRestaurantCompleteData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (singleRestaurantCompleteData != null) {
      return singleRestaurantCompleteData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SingleRestaurantCompleteDataToJson(this);
  }
}

abstract class SingleRestaurantCompleteData implements SingleRestaurantData {
  const factory SingleRestaurantCompleteData(
          {String id,
          @JsonKey(name: 'owner_id') String ownerId,
          String name,
          String address,
          @JsonKey(name: 'phone_number') String phoneNumber,
          String instagram,
          String lat,
          String lng,
          @JsonKey(name: 'created_at') String createdAt,
          @JsonKey(name: 'logo_url') String logoUrl,
          @JsonKey(name: 'updated_at') String updatedAt,
          @JsonKey(name: 'menus') List<MenuClassData> menuClassDataList,
          @JsonKey(name: 'menuBooks') List<MenuBookData> menuBookDataList,
          @JsonKey(name: 'categories') List<CategoryDataClass> categoryList}) =
      _$SingleRestaurantCompleteData;

  factory SingleRestaurantCompleteData.fromJson(Map<String, dynamic> json) =
      _$SingleRestaurantCompleteData.fromJson;

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
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'logo_url')
  String get logoUrl;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'menus')
  List<MenuClassData> get menuClassDataList;
  @override
  @JsonKey(name: 'menuBooks')
  List<MenuBookData> get menuBookDataList;
  @override
  @JsonKey(name: 'categories')
  List<CategoryDataClass> get categoryList;
  @override
  $SingleRestaurantCompleteDataCopyWith<SingleRestaurantCompleteData>
      get copyWith;
}
