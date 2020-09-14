import 'package:feroza/domain/menu/menu_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'menu_req_res.freezed.dart';
part 'menu_req_res.g.dart';

@freezed
abstract class MenuReqRes implements _$MenuReqRes {
  const factory MenuReqRes.menuResponse({List<MenuClassData> data}) =
      MenuResponse;
  const factory MenuReqRes.menuRequestByNearby({
    int paginate,
    int page,
    @JsonKey(name: "order_by_nearest_to_lat_lng") String latLang,
  }) = MenuRequestByNearby;

  const factory MenuReqRes.menuBookResponse({List<MenuBookData> data}) =
      MenuBookResponse;
  const factory MenuReqRes.menuBookResponseWithRestaurant(
      {MenuClassDataWithRestaurant data}) = MenuBookResponseWithRestaurant;

  const factory MenuReqRes.menuBookRequest({
    int paginate,
    int page,
  }) = MenuBookRequest;

  factory MenuReqRes.fromJson(Map<String, dynamic> json) =>
      _$MenuReqResFromJson(json);
}
