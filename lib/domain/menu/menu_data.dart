import 'package:feroza/domain/restaurant/restaurant_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'menu_data.freezed.dart';
part 'menu_data.g.dart';

@freezed
abstract class MenuData implements _$MenuData {
  const factory MenuData.menuClassData({
    String id,
    @JsonKey(name: "category_id") String categoryId,
    @JsonKey(name: "restaurant_id") String restaurantId,
    String name,
    String description,
    String price,
    @JsonKey(name: "small_url") String smallUrl,
    @JsonKey(name: "medium_url") String mediumUrl,
    @JsonKey(name: "large_url") String largeUrl,
    int sorting,
  }) = MenuClassData;
  const factory MenuData.menuClassDataWithRestaurant({
    String id,
    @JsonKey(name: "category_id") String categoryId,
    @JsonKey(name: "restaurant_id") String restaurantId,
    String name,
    String description,
    String price,
    @JsonKey(name: "small_url") String smallUrl,
    @JsonKey(name: "medium_url") String mediumUrl,
    @JsonKey(name: "large_url") String largeUrl,
    @JsonKey(name: "restaurant") RestaurantData restaurant,
    int sorting,
  }) = MenuClassDataWithRestaurant;

  const factory MenuData.menuBookData({
    @JsonKey(name: "id") String id,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "category_id") String categoryId,
    @JsonKey(name: "small_url") String smallUrl,
    @JsonKey(name: "medium_url") String mediumUrl,
    @JsonKey(name: "large_url") String largeUrl,
    @JsonKey(name: "sorting") String sorting,
    @JsonKey(name: "created_at") String createdAt,
    @JsonKey(name: "updated_at") String updatedAt,
    @JsonKey(name: "restaurant") RestaurantData restaurant,
  }) = MenuBookData;
  factory MenuData.fromJson(Map<String, dynamic> json) =>
      _$MenuDataFromJson(json);
}
