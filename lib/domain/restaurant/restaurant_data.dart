import 'package:freezed_annotation/freezed_annotation.dart';
part 'restaurant_data.freezed.dart';

part 'restaurant_data.g.dart';

@freezed
abstract class RestaurantData implements _$RestaurantData {

  const factory RestaurantData.restaurantDataList({
    String id,
    @JsonKey(name: "owner_id") String ownerId,
    String name,
    String address,
    @JsonKey(name: "phone_number") String phoneNumber,
    String instagram,
    String lat,
    String lng,
    @JsonKey(name: "logo_url") String logoUrl,
    @JsonKey(name: "created_at") String createdAt,
    @JsonKey(name: "updated_at") String updatedAt,
  }) = RestaurantDataList;

  factory RestaurantData.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDataFromJson(json);
}
