import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_data.freezed.dart';
part 'category_data.g.dart';

@freezed
abstract class CategoryData implements _$CategoryData {
  const factory CategoryData.categoryDataClass({
    String id,
    String name,
    @JsonKey(name: 'restaurant_id') String restaurantId,
  }) = CategoryDataClass;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}
