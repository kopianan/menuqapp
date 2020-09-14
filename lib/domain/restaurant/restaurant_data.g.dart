// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantDataList _$_$RestaurantDataListFromJson(Map<String, dynamic> json) {
  return _$RestaurantDataList(
    id: json['id'] as String,
    ownerId: json['owner_id'] as String,
    name: json['name'] as String,
    address: json['address'] as String,
    phoneNumber: json['phone_number'] as String,
    instagram: json['instagram'] as String,
    lat: json['lat'] as String,
    lng: json['lng'] as String,
    logoUrl: json['logo_url'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$_$RestaurantDataListToJson(
        _$RestaurantDataList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'name': instance.name,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'instagram': instance.instagram,
      'lat': instance.lat,
      'lng': instance.lng,
      'logo_url': instance.logoUrl,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
