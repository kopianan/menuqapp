// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chart_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChartDataModel _$ChartDataModelFromJson(Map<String, dynamic> json) {
  return _ChartDataModel.fromJson(json);
}

/// @nodoc
class _$ChartDataModelTearOff {
  const _$ChartDataModelTearOff();

// ignore: unused_element
  _ChartDataModel call({MenuData menuData, int quantity}) {
    return _ChartDataModel(
      menuData: menuData,
      quantity: quantity,
    );
  }

// ignore: unused_element
  ChartDataModel fromJson(Map<String, Object> json) {
    return ChartDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ChartDataModel = _$ChartDataModelTearOff();

/// @nodoc
mixin _$ChartDataModel {
  MenuData get menuData;
  int get quantity;

  Map<String, dynamic> toJson();
  $ChartDataModelCopyWith<ChartDataModel> get copyWith;
}

/// @nodoc
abstract class $ChartDataModelCopyWith<$Res> {
  factory $ChartDataModelCopyWith(
          ChartDataModel value, $Res Function(ChartDataModel) then) =
      _$ChartDataModelCopyWithImpl<$Res>;
  $Res call({MenuData menuData, int quantity});

  $MenuDataCopyWith<$Res> get menuData;
}

/// @nodoc
class _$ChartDataModelCopyWithImpl<$Res>
    implements $ChartDataModelCopyWith<$Res> {
  _$ChartDataModelCopyWithImpl(this._value, this._then);

  final ChartDataModel _value;
  // ignore: unused_field
  final $Res Function(ChartDataModel) _then;

  @override
  $Res call({
    Object menuData = freezed,
    Object quantity = freezed,
  }) {
    return _then(_value.copyWith(
      menuData: menuData == freezed ? _value.menuData : menuData as MenuData,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }

  @override
  $MenuDataCopyWith<$Res> get menuData {
    if (_value.menuData == null) {
      return null;
    }
    return $MenuDataCopyWith<$Res>(_value.menuData, (value) {
      return _then(_value.copyWith(menuData: value));
    });
  }
}

/// @nodoc
abstract class _$ChartDataModelCopyWith<$Res>
    implements $ChartDataModelCopyWith<$Res> {
  factory _$ChartDataModelCopyWith(
          _ChartDataModel value, $Res Function(_ChartDataModel) then) =
      __$ChartDataModelCopyWithImpl<$Res>;
  @override
  $Res call({MenuData menuData, int quantity});

  @override
  $MenuDataCopyWith<$Res> get menuData;
}

/// @nodoc
class __$ChartDataModelCopyWithImpl<$Res>
    extends _$ChartDataModelCopyWithImpl<$Res>
    implements _$ChartDataModelCopyWith<$Res> {
  __$ChartDataModelCopyWithImpl(
      _ChartDataModel _value, $Res Function(_ChartDataModel) _then)
      : super(_value, (v) => _then(v as _ChartDataModel));

  @override
  _ChartDataModel get _value => super._value as _ChartDataModel;

  @override
  $Res call({
    Object menuData = freezed,
    Object quantity = freezed,
  }) {
    return _then(_ChartDataModel(
      menuData: menuData == freezed ? _value.menuData : menuData as MenuData,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChartDataModel implements _ChartDataModel {
  const _$_ChartDataModel({this.menuData, this.quantity});

  factory _$_ChartDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ChartDataModelFromJson(json);

  @override
  final MenuData menuData;
  @override
  final int quantity;

  @override
  String toString() {
    return 'ChartDataModel(menuData: $menuData, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChartDataModel &&
            (identical(other.menuData, menuData) ||
                const DeepCollectionEquality()
                    .equals(other.menuData, menuData)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(menuData) ^
      const DeepCollectionEquality().hash(quantity);

  @override
  _$ChartDataModelCopyWith<_ChartDataModel> get copyWith =>
      __$ChartDataModelCopyWithImpl<_ChartDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChartDataModelToJson(this);
  }
}

abstract class _ChartDataModel implements ChartDataModel {
  const factory _ChartDataModel({MenuData menuData, int quantity}) =
      _$_ChartDataModel;

  factory _ChartDataModel.fromJson(Map<String, dynamic> json) =
      _$_ChartDataModel.fromJson;

  @override
  MenuData get menuData;
  @override
  int get quantity;
  @override
  _$ChartDataModelCopyWith<_ChartDataModel> get copyWith;
}
