import 'package:feroza/domain/menu/menu_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chart_data_model.freezed.dart';
part 'chart_data_model.g.dart';

@freezed
abstract class ChartDataModel implements _$ChartDataModel {
  const factory ChartDataModel({MenuData menuData, int quantity}) =
      _ChartDataModel;
  factory ChartDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChartDataModelFromJson(json);
}
