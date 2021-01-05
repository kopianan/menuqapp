// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChartDataModel _$_$_ChartDataModelFromJson(Map<String, dynamic> json) {
  return _$_ChartDataModel(
    menuData: json['menuData'] == null
        ? null
        : MenuData.fromJson(json['menuData'] as Map<String, dynamic>),
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$_$_ChartDataModelToJson(_$_ChartDataModel instance) =>
    <String, dynamic>{
      'menuData': instance.menuData,
      'quantity': instance.quantity,
    };
