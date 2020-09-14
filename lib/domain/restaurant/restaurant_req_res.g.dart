// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_req_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRestaurantListResponse _$_$GetRestaurantListResponseFromJson(
    Map<String, dynamic> json) {
  return _$GetRestaurantListResponse(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : RestaurantData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$GetRestaurantListResponseToJson(
        _$GetRestaurantListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$GetAllRestaurantDataResponse _$_$GetAllRestaurantDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$GetAllRestaurantDataResponse(
    json['data'] == null
        ? null
        : SingleRestaurantCompleteData.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$GetAllRestaurantDataResponseToJson(
        _$GetAllRestaurantDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$GetRestaurantListRequest _$_$GetRestaurantListRequestFromJson(
    Map<String, dynamic> json) {
  return _$GetRestaurantListRequest(
    paginate: json['paginate'] as int,
    page: json['page'] as int,
    latLang: json['order_by_nearest_to_lat_lng'] as String,
  );
}

Map<String, dynamic> _$_$GetRestaurantListRequestToJson(
        _$GetRestaurantListRequest instance) =>
    <String, dynamic>{
      'paginate': instance.paginate,
      'page': instance.page,
      'order_by_nearest_to_lat_lng': instance.latLang,
    };
