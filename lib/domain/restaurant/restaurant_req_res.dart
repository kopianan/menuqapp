import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:feroza/domain/restaurant/single_restaurant_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'restaurant_req_res.freezed.dart';
part 'restaurant_req_res.g.dart';

@freezed
abstract class RestaurantReqRes implements _$RestaurantReqRes {
  const factory RestaurantReqRes.getRestaurantListResponse({
    List<RestaurantData> data,
  }) = GetRestaurantListResponse;

  const factory RestaurantReqRes.getAllRestaurantDataResponse(
    SingleRestaurantCompleteData data,
  ) = GetAllRestaurantDataResponse;

  const factory RestaurantReqRes.getRestaurantListRequest(
      {@required
          int paginate,
      @required
          int page,
      @JsonKey(name: "order_by_nearest_to_lat_lng")
      @required
          String latLang}) = GetRestaurantListRequest;

  factory RestaurantReqRes.fromJson(Map<String, dynamic> json) =>
      _$RestaurantReqResFromJson(json);
}
