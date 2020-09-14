// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_restaurant_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleRestaurantCompleteData _$_$SingleRestaurantCompleteDataFromJson(
    Map<String, dynamic> json) {
  return _$SingleRestaurantCompleteData(
    id: json['id'] as String,
    ownerId: json['owner_id'] as String,
    name: json['name'] as String,
    address: json['address'] as String,
    phoneNumber: json['phone_number'] as String,
    instagram: json['instagram'] as String,
    lat: json['lat'] as String,
    lng: json['lng'] as String,
    createdAt: json['created_at'] as String,
    logoUrl: json['logo_url'] as String,
    updatedAt: json['updated_at'] as String,
    menuClassDataList: (json['menus'] as List)
        ?.map((e) => e == null
            ? null
            : MenuClassData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    menuBookDataList: (json['menuBooks'] as List)
        ?.map((e) =>
            e == null ? null : MenuBookData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    categoryList: (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : CategoryDataClass.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$SingleRestaurantCompleteDataToJson(
        _$SingleRestaurantCompleteData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'name': instance.name,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'instagram': instance.instagram,
      'lat': instance.lat,
      'lng': instance.lng,
      'created_at': instance.createdAt,
      'logo_url': instance.logoUrl,
      'updated_at': instance.updatedAt,
      'menus': instance.menuClassDataList,
      'menuBooks': instance.menuBookDataList,
      'categories': instance.categoryList,
    };
