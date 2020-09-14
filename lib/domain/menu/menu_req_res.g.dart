// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_req_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuResponse _$_$MenuResponseFromJson(Map<String, dynamic> json) {
  return _$MenuResponse(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : MenuClassData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$MenuResponseToJson(_$MenuResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$MenuRequestByNearby _$_$MenuRequestByNearbyFromJson(
    Map<String, dynamic> json) {
  return _$MenuRequestByNearby(
    paginate: json['paginate'] as int,
    page: json['page'] as int,
    latLang: json['order_by_nearest_to_lat_lng'] as String,
  );
}

Map<String, dynamic> _$_$MenuRequestByNearbyToJson(
        _$MenuRequestByNearby instance) =>
    <String, dynamic>{
      'paginate': instance.paginate,
      'page': instance.page,
      'order_by_nearest_to_lat_lng': instance.latLang,
    };

_$MenuBookResponse _$_$MenuBookResponseFromJson(Map<String, dynamic> json) {
  return _$MenuBookResponse(
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : MenuBookData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$MenuBookResponseToJson(_$MenuBookResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$MenuBookResponseWithRestaurant _$_$MenuBookResponseWithRestaurantFromJson(
    Map<String, dynamic> json) {
  return _$MenuBookResponseWithRestaurant(
    data: json['data'] == null
        ? null
        : MenuClassDataWithRestaurant.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$MenuBookResponseWithRestaurantToJson(
        _$MenuBookResponseWithRestaurant instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$MenuBookRequest _$_$MenuBookRequestFromJson(Map<String, dynamic> json) {
  return _$MenuBookRequest(
    paginate: json['paginate'] as int,
    page: json['page'] as int,
  );
}

Map<String, dynamic> _$_$MenuBookRequestToJson(_$MenuBookRequest instance) =>
    <String, dynamic>{
      'paginate': instance.paginate,
      'page': instance.page,
    };
