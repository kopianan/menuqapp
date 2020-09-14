import 'package:feroza/domain/category/category_data.dart';
import 'package:feroza/domain/menu/menu_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'single_restaurant_data.freezed.dart';
part 'single_restaurant_data.g.dart';

@freezed
abstract class SingleRestaurantData implements _$SingleRestaurantData {
  const factory SingleRestaurantData.singleRestaurantCompleteData({
    String id,
    @JsonKey(name: "owner_id") String ownerId,
    String name,
    String address,
    @JsonKey(name: "phone_number") String phoneNumber,
    String instagram,
    String lat,
    String lng,
    @JsonKey(name: "created_at") String createdAt,
    @JsonKey(name: "logo_url") String logoUrl,
    @JsonKey(name: "updated_at") String updatedAt,
    @JsonKey(name: 'menus') List<MenuClassData> menuClassDataList,
    @JsonKey(name: 'menuBooks') List<MenuBookData> menuBookDataList,
    @JsonKey(name: 'categories') List<CategoryDataClass> categoryList,
  }) = SingleRestaurantCompleteData;

  factory SingleRestaurantData.fromJson(Map<String, dynamic> json) =>
      _$SingleRestaurantDataFromJson(json);
}
