// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'menu_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MenuData _$MenuDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'menuClassData':
      return MenuClassData.fromJson(json);
    case 'menuClassDataWithRestaurant':
      return MenuClassDataWithRestaurant.fromJson(json);
    case 'menuBookData':
      return MenuBookData.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$MenuDataTearOff {
  const _$MenuDataTearOff();

// ignore: unused_element
  MenuClassData menuClassData(
      {String id,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'restaurant_id') String restaurantId,
      String name,
      String description,
      String price,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl,
      int sorting}) {
    return MenuClassData(
      id: id,
      categoryId: categoryId,
      restaurantId: restaurantId,
      name: name,
      description: description,
      price: price,
      smallUrl: smallUrl,
      mediumUrl: mediumUrl,
      largeUrl: largeUrl,
      sorting: sorting,
    );
  }

// ignore: unused_element
  MenuClassDataWithRestaurant menuClassDataWithRestaurant(
      {String id,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'restaurant_id') String restaurantId,
      String name,
      String description,
      String price,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl,
      @JsonKey(name: 'restaurant') RestaurantData restaurant,
      int sorting}) {
    return MenuClassDataWithRestaurant(
      id: id,
      categoryId: categoryId,
      restaurantId: restaurantId,
      name: name,
      description: description,
      price: price,
      smallUrl: smallUrl,
      mediumUrl: mediumUrl,
      largeUrl: largeUrl,
      restaurant: restaurant,
      sorting: sorting,
    );
  }

// ignore: unused_element
  MenuBookData menuBookData(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl,
      @JsonKey(name: 'sorting') String sorting,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'restaurant') RestaurantData restaurant}) {
    return MenuBookData(
      id: id,
      name: name,
      categoryId: categoryId,
      smallUrl: smallUrl,
      mediumUrl: mediumUrl,
      largeUrl: largeUrl,
      sorting: sorting,
      createdAt: createdAt,
      updatedAt: updatedAt,
      restaurant: restaurant,
    );
  }

// ignore: unused_element
  MenuData fromJson(Map<String, Object> json) {
    return MenuData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MenuData = _$MenuDataTearOff();

/// @nodoc
mixin _$MenuData {
  String get id;
  @JsonKey(name: 'category_id')
  String get categoryId;
  String get name;
  @JsonKey(name: 'small_url')
  String get smallUrl;
  @JsonKey(name: 'medium_url')
  String get mediumUrl;
  @JsonKey(name: 'large_url')
  String get largeUrl;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult menuClassData(
            String id,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'restaurant_id') String restaurantId,
            String name,
            String description,
            String price,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            int sorting),
    @required
        TResult menuClassDataWithRestaurant(
            String id,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'restaurant_id') String restaurantId,
            String name,
            String description,
            String price,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            @JsonKey(name: 'restaurant') RestaurantData restaurant,
            int sorting),
    @required
        TResult menuBookData(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            @JsonKey(name: 'sorting') String sorting,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'restaurant') RestaurantData restaurant),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuClassData(
        String id,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'restaurant_id') String restaurantId,
        String name,
        String description,
        String price,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        int sorting),
    TResult menuClassDataWithRestaurant(
        String id,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'restaurant_id') String restaurantId,
        String name,
        String description,
        String price,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        @JsonKey(name: 'restaurant') RestaurantData restaurant,
        int sorting),
    TResult menuBookData(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'name') String name,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        @JsonKey(name: 'sorting') String sorting,
        @JsonKey(name: 'created_at') String createdAt,
        @JsonKey(name: 'updated_at') String updatedAt,
        @JsonKey(name: 'restaurant') RestaurantData restaurant),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuClassData(MenuClassData value),
    @required
        TResult menuClassDataWithRestaurant(MenuClassDataWithRestaurant value),
    @required TResult menuBookData(MenuBookData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuClassData(MenuClassData value),
    TResult menuClassDataWithRestaurant(MenuClassDataWithRestaurant value),
    TResult menuBookData(MenuBookData value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  $MenuDataCopyWith<MenuData> get copyWith;
}

/// @nodoc
abstract class $MenuDataCopyWith<$Res> {
  factory $MenuDataCopyWith(MenuData value, $Res Function(MenuData) then) =
      _$MenuDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'category_id') String categoryId,
      String name,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl});
}

/// @nodoc
class _$MenuDataCopyWithImpl<$Res> implements $MenuDataCopyWith<$Res> {
  _$MenuDataCopyWithImpl(this._value, this._then);

  final MenuData _value;
  // ignore: unused_field
  final $Res Function(MenuData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object categoryId = freezed,
    Object name = freezed,
    Object smallUrl = freezed,
    Object mediumUrl = freezed,
    Object largeUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as String,
      name: name == freezed ? _value.name : name as String,
      smallUrl: smallUrl == freezed ? _value.smallUrl : smallUrl as String,
      mediumUrl: mediumUrl == freezed ? _value.mediumUrl : mediumUrl as String,
      largeUrl: largeUrl == freezed ? _value.largeUrl : largeUrl as String,
    ));
  }
}

/// @nodoc
abstract class $MenuClassDataCopyWith<$Res> implements $MenuDataCopyWith<$Res> {
  factory $MenuClassDataCopyWith(
          MenuClassData value, $Res Function(MenuClassData) then) =
      _$MenuClassDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'restaurant_id') String restaurantId,
      String name,
      String description,
      String price,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl,
      int sorting});
}

/// @nodoc
class _$MenuClassDataCopyWithImpl<$Res> extends _$MenuDataCopyWithImpl<$Res>
    implements $MenuClassDataCopyWith<$Res> {
  _$MenuClassDataCopyWithImpl(
      MenuClassData _value, $Res Function(MenuClassData) _then)
      : super(_value, (v) => _then(v as MenuClassData));

  @override
  MenuClassData get _value => super._value as MenuClassData;

  @override
  $Res call({
    Object id = freezed,
    Object categoryId = freezed,
    Object restaurantId = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object smallUrl = freezed,
    Object mediumUrl = freezed,
    Object largeUrl = freezed,
    Object sorting = freezed,
  }) {
    return _then(MenuClassData(
      id: id == freezed ? _value.id : id as String,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as String,
      smallUrl: smallUrl == freezed ? _value.smallUrl : smallUrl as String,
      mediumUrl: mediumUrl == freezed ? _value.mediumUrl : mediumUrl as String,
      largeUrl: largeUrl == freezed ? _value.largeUrl : largeUrl as String,
      sorting: sorting == freezed ? _value.sorting : sorting as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MenuClassData implements MenuClassData {
  const _$MenuClassData(
      {this.id,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'restaurant_id') this.restaurantId,
      this.name,
      this.description,
      this.price,
      @JsonKey(name: 'small_url') this.smallUrl,
      @JsonKey(name: 'medium_url') this.mediumUrl,
      @JsonKey(name: 'large_url') this.largeUrl,
      this.sorting});

  factory _$MenuClassData.fromJson(Map<String, dynamic> json) =>
      _$_$MenuClassDataFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'category_id')
  final String categoryId;
  @override
  @JsonKey(name: 'restaurant_id')
  final String restaurantId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String price;
  @override
  @JsonKey(name: 'small_url')
  final String smallUrl;
  @override
  @JsonKey(name: 'medium_url')
  final String mediumUrl;
  @override
  @JsonKey(name: 'large_url')
  final String largeUrl;
  @override
  final int sorting;

  @override
  String toString() {
    return 'MenuData.menuClassData(id: $id, categoryId: $categoryId, restaurantId: $restaurantId, name: $name, description: $description, price: $price, smallUrl: $smallUrl, mediumUrl: $mediumUrl, largeUrl: $largeUrl, sorting: $sorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuClassData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.smallUrl, smallUrl) ||
                const DeepCollectionEquality()
                    .equals(other.smallUrl, smallUrl)) &&
            (identical(other.mediumUrl, mediumUrl) ||
                const DeepCollectionEquality()
                    .equals(other.mediumUrl, mediumUrl)) &&
            (identical(other.largeUrl, largeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.largeUrl, largeUrl)) &&
            (identical(other.sorting, sorting) ||
                const DeepCollectionEquality().equals(other.sorting, sorting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(smallUrl) ^
      const DeepCollectionEquality().hash(mediumUrl) ^
      const DeepCollectionEquality().hash(largeUrl) ^
      const DeepCollectionEquality().hash(sorting);

  @override
  $MenuClassDataCopyWith<MenuClassData> get copyWith =>
      _$MenuClassDataCopyWithImpl<MenuClassData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult menuClassData(
            String id,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'restaurant_id') String restaurantId,
            String name,
            String description,
            String price,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            int sorting),
    @required
        TResult menuClassDataWithRestaurant(
            String id,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'restaurant_id') String restaurantId,
            String name,
            String description,
            String price,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            @JsonKey(name: 'restaurant') RestaurantData restaurant,
            int sorting),
    @required
        TResult menuBookData(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            @JsonKey(name: 'sorting') String sorting,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'restaurant') RestaurantData restaurant),
  }) {
    assert(menuClassData != null);
    assert(menuClassDataWithRestaurant != null);
    assert(menuBookData != null);
    return menuClassData(id, categoryId, restaurantId, name, description, price,
        smallUrl, mediumUrl, largeUrl, sorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuClassData(
        String id,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'restaurant_id') String restaurantId,
        String name,
        String description,
        String price,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        int sorting),
    TResult menuClassDataWithRestaurant(
        String id,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'restaurant_id') String restaurantId,
        String name,
        String description,
        String price,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        @JsonKey(name: 'restaurant') RestaurantData restaurant,
        int sorting),
    TResult menuBookData(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'name') String name,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        @JsonKey(name: 'sorting') String sorting,
        @JsonKey(name: 'created_at') String createdAt,
        @JsonKey(name: 'updated_at') String updatedAt,
        @JsonKey(name: 'restaurant') RestaurantData restaurant),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuClassData != null) {
      return menuClassData(id, categoryId, restaurantId, name, description,
          price, smallUrl, mediumUrl, largeUrl, sorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuClassData(MenuClassData value),
    @required
        TResult menuClassDataWithRestaurant(MenuClassDataWithRestaurant value),
    @required TResult menuBookData(MenuBookData value),
  }) {
    assert(menuClassData != null);
    assert(menuClassDataWithRestaurant != null);
    assert(menuBookData != null);
    return menuClassData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuClassData(MenuClassData value),
    TResult menuClassDataWithRestaurant(MenuClassDataWithRestaurant value),
    TResult menuBookData(MenuBookData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuClassData != null) {
      return menuClassData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MenuClassDataToJson(this)..['runtimeType'] = 'menuClassData';
  }
}

abstract class MenuClassData implements MenuData {
  const factory MenuClassData(
      {String id,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'restaurant_id') String restaurantId,
      String name,
      String description,
      String price,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl,
      int sorting}) = _$MenuClassData;

  factory MenuClassData.fromJson(Map<String, dynamic> json) =
      _$MenuClassData.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'category_id')
  String get categoryId;
  @JsonKey(name: 'restaurant_id')
  String get restaurantId;
  @override
  String get name;
  String get description;
  String get price;
  @override
  @JsonKey(name: 'small_url')
  String get smallUrl;
  @override
  @JsonKey(name: 'medium_url')
  String get mediumUrl;
  @override
  @JsonKey(name: 'large_url')
  String get largeUrl;
  int get sorting;
  @override
  $MenuClassDataCopyWith<MenuClassData> get copyWith;
}

/// @nodoc
abstract class $MenuClassDataWithRestaurantCopyWith<$Res>
    implements $MenuDataCopyWith<$Res> {
  factory $MenuClassDataWithRestaurantCopyWith(
          MenuClassDataWithRestaurant value,
          $Res Function(MenuClassDataWithRestaurant) then) =
      _$MenuClassDataWithRestaurantCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'restaurant_id') String restaurantId,
      String name,
      String description,
      String price,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl,
      @JsonKey(name: 'restaurant') RestaurantData restaurant,
      int sorting});

  $RestaurantDataCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$MenuClassDataWithRestaurantCopyWithImpl<$Res>
    extends _$MenuDataCopyWithImpl<$Res>
    implements $MenuClassDataWithRestaurantCopyWith<$Res> {
  _$MenuClassDataWithRestaurantCopyWithImpl(MenuClassDataWithRestaurant _value,
      $Res Function(MenuClassDataWithRestaurant) _then)
      : super(_value, (v) => _then(v as MenuClassDataWithRestaurant));

  @override
  MenuClassDataWithRestaurant get _value =>
      super._value as MenuClassDataWithRestaurant;

  @override
  $Res call({
    Object id = freezed,
    Object categoryId = freezed,
    Object restaurantId = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object smallUrl = freezed,
    Object mediumUrl = freezed,
    Object largeUrl = freezed,
    Object restaurant = freezed,
    Object sorting = freezed,
  }) {
    return _then(MenuClassDataWithRestaurant(
      id: id == freezed ? _value.id : id as String,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as String,
      smallUrl: smallUrl == freezed ? _value.smallUrl : smallUrl as String,
      mediumUrl: mediumUrl == freezed ? _value.mediumUrl : mediumUrl as String,
      largeUrl: largeUrl == freezed ? _value.largeUrl : largeUrl as String,
      restaurant: restaurant == freezed
          ? _value.restaurant
          : restaurant as RestaurantData,
      sorting: sorting == freezed ? _value.sorting : sorting as int,
    ));
  }

  @override
  $RestaurantDataCopyWith<$Res> get restaurant {
    if (_value.restaurant == null) {
      return null;
    }
    return $RestaurantDataCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$MenuClassDataWithRestaurant implements MenuClassDataWithRestaurant {
  const _$MenuClassDataWithRestaurant(
      {this.id,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'restaurant_id') this.restaurantId,
      this.name,
      this.description,
      this.price,
      @JsonKey(name: 'small_url') this.smallUrl,
      @JsonKey(name: 'medium_url') this.mediumUrl,
      @JsonKey(name: 'large_url') this.largeUrl,
      @JsonKey(name: 'restaurant') this.restaurant,
      this.sorting});

  factory _$MenuClassDataWithRestaurant.fromJson(Map<String, dynamic> json) =>
      _$_$MenuClassDataWithRestaurantFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'category_id')
  final String categoryId;
  @override
  @JsonKey(name: 'restaurant_id')
  final String restaurantId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String price;
  @override
  @JsonKey(name: 'small_url')
  final String smallUrl;
  @override
  @JsonKey(name: 'medium_url')
  final String mediumUrl;
  @override
  @JsonKey(name: 'large_url')
  final String largeUrl;
  @override
  @JsonKey(name: 'restaurant')
  final RestaurantData restaurant;
  @override
  final int sorting;

  @override
  String toString() {
    return 'MenuData.menuClassDataWithRestaurant(id: $id, categoryId: $categoryId, restaurantId: $restaurantId, name: $name, description: $description, price: $price, smallUrl: $smallUrl, mediumUrl: $mediumUrl, largeUrl: $largeUrl, restaurant: $restaurant, sorting: $sorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuClassDataWithRestaurant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.smallUrl, smallUrl) ||
                const DeepCollectionEquality()
                    .equals(other.smallUrl, smallUrl)) &&
            (identical(other.mediumUrl, mediumUrl) ||
                const DeepCollectionEquality()
                    .equals(other.mediumUrl, mediumUrl)) &&
            (identical(other.largeUrl, largeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.largeUrl, largeUrl)) &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)) &&
            (identical(other.sorting, sorting) ||
                const DeepCollectionEquality().equals(other.sorting, sorting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(restaurantId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(smallUrl) ^
      const DeepCollectionEquality().hash(mediumUrl) ^
      const DeepCollectionEquality().hash(largeUrl) ^
      const DeepCollectionEquality().hash(restaurant) ^
      const DeepCollectionEquality().hash(sorting);

  @override
  $MenuClassDataWithRestaurantCopyWith<MenuClassDataWithRestaurant>
      get copyWith => _$MenuClassDataWithRestaurantCopyWithImpl<
          MenuClassDataWithRestaurant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult menuClassData(
            String id,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'restaurant_id') String restaurantId,
            String name,
            String description,
            String price,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            int sorting),
    @required
        TResult menuClassDataWithRestaurant(
            String id,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'restaurant_id') String restaurantId,
            String name,
            String description,
            String price,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            @JsonKey(name: 'restaurant') RestaurantData restaurant,
            int sorting),
    @required
        TResult menuBookData(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            @JsonKey(name: 'sorting') String sorting,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'restaurant') RestaurantData restaurant),
  }) {
    assert(menuClassData != null);
    assert(menuClassDataWithRestaurant != null);
    assert(menuBookData != null);
    return menuClassDataWithRestaurant(id, categoryId, restaurantId, name,
        description, price, smallUrl, mediumUrl, largeUrl, restaurant, sorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuClassData(
        String id,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'restaurant_id') String restaurantId,
        String name,
        String description,
        String price,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        int sorting),
    TResult menuClassDataWithRestaurant(
        String id,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'restaurant_id') String restaurantId,
        String name,
        String description,
        String price,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        @JsonKey(name: 'restaurant') RestaurantData restaurant,
        int sorting),
    TResult menuBookData(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'name') String name,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        @JsonKey(name: 'sorting') String sorting,
        @JsonKey(name: 'created_at') String createdAt,
        @JsonKey(name: 'updated_at') String updatedAt,
        @JsonKey(name: 'restaurant') RestaurantData restaurant),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuClassDataWithRestaurant != null) {
      return menuClassDataWithRestaurant(
          id,
          categoryId,
          restaurantId,
          name,
          description,
          price,
          smallUrl,
          mediumUrl,
          largeUrl,
          restaurant,
          sorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuClassData(MenuClassData value),
    @required
        TResult menuClassDataWithRestaurant(MenuClassDataWithRestaurant value),
    @required TResult menuBookData(MenuBookData value),
  }) {
    assert(menuClassData != null);
    assert(menuClassDataWithRestaurant != null);
    assert(menuBookData != null);
    return menuClassDataWithRestaurant(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuClassData(MenuClassData value),
    TResult menuClassDataWithRestaurant(MenuClassDataWithRestaurant value),
    TResult menuBookData(MenuBookData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuClassDataWithRestaurant != null) {
      return menuClassDataWithRestaurant(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MenuClassDataWithRestaurantToJson(this)
      ..['runtimeType'] = 'menuClassDataWithRestaurant';
  }
}

abstract class MenuClassDataWithRestaurant implements MenuData {
  const factory MenuClassDataWithRestaurant(
      {String id,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'restaurant_id') String restaurantId,
      String name,
      String description,
      String price,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl,
      @JsonKey(name: 'restaurant') RestaurantData restaurant,
      int sorting}) = _$MenuClassDataWithRestaurant;

  factory MenuClassDataWithRestaurant.fromJson(Map<String, dynamic> json) =
      _$MenuClassDataWithRestaurant.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'category_id')
  String get categoryId;
  @JsonKey(name: 'restaurant_id')
  String get restaurantId;
  @override
  String get name;
  String get description;
  String get price;
  @override
  @JsonKey(name: 'small_url')
  String get smallUrl;
  @override
  @JsonKey(name: 'medium_url')
  String get mediumUrl;
  @override
  @JsonKey(name: 'large_url')
  String get largeUrl;
  @JsonKey(name: 'restaurant')
  RestaurantData get restaurant;
  int get sorting;
  @override
  $MenuClassDataWithRestaurantCopyWith<MenuClassDataWithRestaurant>
      get copyWith;
}

/// @nodoc
abstract class $MenuBookDataCopyWith<$Res> implements $MenuDataCopyWith<$Res> {
  factory $MenuBookDataCopyWith(
          MenuBookData value, $Res Function(MenuBookData) then) =
      _$MenuBookDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl,
      @JsonKey(name: 'sorting') String sorting,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'restaurant') RestaurantData restaurant});

  $RestaurantDataCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$MenuBookDataCopyWithImpl<$Res> extends _$MenuDataCopyWithImpl<$Res>
    implements $MenuBookDataCopyWith<$Res> {
  _$MenuBookDataCopyWithImpl(
      MenuBookData _value, $Res Function(MenuBookData) _then)
      : super(_value, (v) => _then(v as MenuBookData));

  @override
  MenuBookData get _value => super._value as MenuBookData;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object categoryId = freezed,
    Object smallUrl = freezed,
    Object mediumUrl = freezed,
    Object largeUrl = freezed,
    Object sorting = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object restaurant = freezed,
  }) {
    return _then(MenuBookData(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as String,
      smallUrl: smallUrl == freezed ? _value.smallUrl : smallUrl as String,
      mediumUrl: mediumUrl == freezed ? _value.mediumUrl : mediumUrl as String,
      largeUrl: largeUrl == freezed ? _value.largeUrl : largeUrl as String,
      sorting: sorting == freezed ? _value.sorting : sorting as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      restaurant: restaurant == freezed
          ? _value.restaurant
          : restaurant as RestaurantData,
    ));
  }

  @override
  $RestaurantDataCopyWith<$Res> get restaurant {
    if (_value.restaurant == null) {
      return null;
    }
    return $RestaurantDataCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$MenuBookData implements MenuBookData {
  const _$MenuBookData(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'small_url') this.smallUrl,
      @JsonKey(name: 'medium_url') this.mediumUrl,
      @JsonKey(name: 'large_url') this.largeUrl,
      @JsonKey(name: 'sorting') this.sorting,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'restaurant') this.restaurant});

  factory _$MenuBookData.fromJson(Map<String, dynamic> json) =>
      _$_$MenuBookDataFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'category_id')
  final String categoryId;
  @override
  @JsonKey(name: 'small_url')
  final String smallUrl;
  @override
  @JsonKey(name: 'medium_url')
  final String mediumUrl;
  @override
  @JsonKey(name: 'large_url')
  final String largeUrl;
  @override
  @JsonKey(name: 'sorting')
  final String sorting;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'restaurant')
  final RestaurantData restaurant;

  @override
  String toString() {
    return 'MenuData.menuBookData(id: $id, name: $name, categoryId: $categoryId, smallUrl: $smallUrl, mediumUrl: $mediumUrl, largeUrl: $largeUrl, sorting: $sorting, createdAt: $createdAt, updatedAt: $updatedAt, restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuBookData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.smallUrl, smallUrl) ||
                const DeepCollectionEquality()
                    .equals(other.smallUrl, smallUrl)) &&
            (identical(other.mediumUrl, mediumUrl) ||
                const DeepCollectionEquality()
                    .equals(other.mediumUrl, mediumUrl)) &&
            (identical(other.largeUrl, largeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.largeUrl, largeUrl)) &&
            (identical(other.sorting, sorting) ||
                const DeepCollectionEquality()
                    .equals(other.sorting, sorting)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(smallUrl) ^
      const DeepCollectionEquality().hash(mediumUrl) ^
      const DeepCollectionEquality().hash(largeUrl) ^
      const DeepCollectionEquality().hash(sorting) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(restaurant);

  @override
  $MenuBookDataCopyWith<MenuBookData> get copyWith =>
      _$MenuBookDataCopyWithImpl<MenuBookData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult menuClassData(
            String id,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'restaurant_id') String restaurantId,
            String name,
            String description,
            String price,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            int sorting),
    @required
        TResult menuClassDataWithRestaurant(
            String id,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'restaurant_id') String restaurantId,
            String name,
            String description,
            String price,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            @JsonKey(name: 'restaurant') RestaurantData restaurant,
            int sorting),
    @required
        TResult menuBookData(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'category_id') String categoryId,
            @JsonKey(name: 'small_url') String smallUrl,
            @JsonKey(name: 'medium_url') String mediumUrl,
            @JsonKey(name: 'large_url') String largeUrl,
            @JsonKey(name: 'sorting') String sorting,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'restaurant') RestaurantData restaurant),
  }) {
    assert(menuClassData != null);
    assert(menuClassDataWithRestaurant != null);
    assert(menuBookData != null);
    return menuBookData(id, name, categoryId, smallUrl, mediumUrl, largeUrl,
        sorting, createdAt, updatedAt, restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult menuClassData(
        String id,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'restaurant_id') String restaurantId,
        String name,
        String description,
        String price,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        int sorting),
    TResult menuClassDataWithRestaurant(
        String id,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'restaurant_id') String restaurantId,
        String name,
        String description,
        String price,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        @JsonKey(name: 'restaurant') RestaurantData restaurant,
        int sorting),
    TResult menuBookData(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'name') String name,
        @JsonKey(name: 'category_id') String categoryId,
        @JsonKey(name: 'small_url') String smallUrl,
        @JsonKey(name: 'medium_url') String mediumUrl,
        @JsonKey(name: 'large_url') String largeUrl,
        @JsonKey(name: 'sorting') String sorting,
        @JsonKey(name: 'created_at') String createdAt,
        @JsonKey(name: 'updated_at') String updatedAt,
        @JsonKey(name: 'restaurant') RestaurantData restaurant),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuBookData != null) {
      return menuBookData(id, name, categoryId, smallUrl, mediumUrl, largeUrl,
          sorting, createdAt, updatedAt, restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult menuClassData(MenuClassData value),
    @required
        TResult menuClassDataWithRestaurant(MenuClassDataWithRestaurant value),
    @required TResult menuBookData(MenuBookData value),
  }) {
    assert(menuClassData != null);
    assert(menuClassDataWithRestaurant != null);
    assert(menuBookData != null);
    return menuBookData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult menuClassData(MenuClassData value),
    TResult menuClassDataWithRestaurant(MenuClassDataWithRestaurant value),
    TResult menuBookData(MenuBookData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (menuBookData != null) {
      return menuBookData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MenuBookDataToJson(this)..['runtimeType'] = 'menuBookData';
  }
}

abstract class MenuBookData implements MenuData {
  const factory MenuBookData(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'category_id') String categoryId,
      @JsonKey(name: 'small_url') String smallUrl,
      @JsonKey(name: 'medium_url') String mediumUrl,
      @JsonKey(name: 'large_url') String largeUrl,
      @JsonKey(name: 'sorting') String sorting,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'restaurant') RestaurantData restaurant}) = _$MenuBookData;

  factory MenuBookData.fromJson(Map<String, dynamic> json) =
      _$MenuBookData.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'category_id')
  String get categoryId;
  @override
  @JsonKey(name: 'small_url')
  String get smallUrl;
  @override
  @JsonKey(name: 'medium_url')
  String get mediumUrl;
  @override
  @JsonKey(name: 'large_url')
  String get largeUrl;
  @JsonKey(name: 'sorting')
  String get sorting;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'restaurant')
  RestaurantData get restaurant;
  @override
  $MenuBookDataCopyWith<MenuBookData> get copyWith;
}
