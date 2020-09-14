// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuClassData _$_$MenuClassDataFromJson(Map<String, dynamic> json) {
  return _$MenuClassData(
    id: json['id'] as String,
    categoryId: json['category_id'] as String,
    restaurantId: json['restaurant_id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    price: json['price'] as String,
    smallUrl: json['small_url'] as String,
    mediumUrl: json['medium_url'] as String,
    largeUrl: json['large_url'] as String,
    sorting: json['sorting'] as int,
  );
}

Map<String, dynamic> _$_$MenuClassDataToJson(_$MenuClassData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'restaurant_id': instance.restaurantId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'small_url': instance.smallUrl,
      'medium_url': instance.mediumUrl,
      'large_url': instance.largeUrl,
      'sorting': instance.sorting,
    };

_$MenuClassDataWithRestaurant _$_$MenuClassDataWithRestaurantFromJson(
    Map<String, dynamic> json) {
  return _$MenuClassDataWithRestaurant(
    id: json['id'] as String,
    categoryId: json['category_id'] as String,
    restaurantId: json['restaurant_id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    price: json['price'] as String,
    smallUrl: json['small_url'] as String,
    mediumUrl: json['medium_url'] as String,
    largeUrl: json['large_url'] as String,
    restaurant: json['restaurant'] == null
        ? null
        : RestaurantData.fromJson(json['restaurant'] as Map<String, dynamic>),
    sorting: json['sorting'] as int,
  );
}

Map<String, dynamic> _$_$MenuClassDataWithRestaurantToJson(
        _$MenuClassDataWithRestaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'restaurant_id': instance.restaurantId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'small_url': instance.smallUrl,
      'medium_url': instance.mediumUrl,
      'large_url': instance.largeUrl,
      'restaurant': instance.restaurant,
      'sorting': instance.sorting,
    };

_$MenuBookData _$_$MenuBookDataFromJson(Map<String, dynamic> json) {
  return _$MenuBookData(
    id: json['id'] as String,
    name: json['name'] as String,
    categoryId: json['category_id'] as String,
    smallUrl: json['small_url'] as String,
    mediumUrl: json['medium_url'] as String,
    largeUrl: json['large_url'] as String,
    sorting: json['sorting'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    restaurant: json['restaurant'] == null
        ? null
        : RestaurantData.fromJson(json['restaurant'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$MenuBookDataToJson(_$MenuBookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
      'small_url': instance.smallUrl,
      'medium_url': instance.mediumUrl,
      'large_url': instance.largeUrl,
      'sorting': instance.sorting,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'restaurant': instance.restaurant,
    };
