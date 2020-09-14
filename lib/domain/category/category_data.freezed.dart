// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'category_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) {
  return CategoryDataClass.fromJson(json);
}

class _$CategoryDataTearOff {
  const _$CategoryDataTearOff();

  CategoryDataClass categoryDataClass(
      {String id,
      String name,
      @JsonKey(name: 'restaurant_id') String restaurantId}) {
    return CategoryDataClass(
      id: id,
      name: name,
      restaurantId: restaurantId,
    );
  }
}

// ignore: unused_element
const $CategoryData = _$CategoryDataTearOff();

mixin _$CategoryData {
  String get id;
  String get name;
  @JsonKey(name: 'restaurant_id')
  String get restaurantId;

  Map<String, dynamic> toJson();
  $CategoryDataCopyWith<CategoryData> get copyWith;
}

abstract class $CategoryDataCopyWith<$Res> {
  factory $CategoryDataCopyWith(
          CategoryData value, $Res Function(CategoryData) then) =
      _$CategoryDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'restaurant_id') String restaurantId});
}

class _$CategoryDataCopyWithImpl<$Res> implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._value, this._then);

  final CategoryData _value;
  // ignore: unused_field
  final $Res Function(CategoryData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object restaurantId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId as String,
    ));
  }
}

abstract class $CategoryDataClassCopyWith<$Res>
    implements $CategoryDataCopyWith<$Res> {
  factory $CategoryDataClassCopyWith(
          CategoryDataClass value, $Res Function(CategoryDataClass) then) =
      _$CategoryDataClassCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'restaurant_id') String restaurantId});
}

class _$CategoryDataClassCopyWithImpl<$Res>
    extends _$CategoryDataCopyWithImpl<$Res>
    implements $CategoryDataClassCopyWith<$Res> {
  _$CategoryDataClassCopyWithImpl(
      CategoryDataClass _value, $Res Function(CategoryDataClass) _then)
      : super(_value, (v) => _then(v as CategoryDataClass));

  @override
  CategoryDataClass get _value => super._value as CategoryDataClass;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object restaurantId = freezed,
  }) {
    return _then(CategoryDataClass(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId as String,
    ));
  }
}

@JsonSerializable()
class _$CategoryDataClass implements CategoryDataClass {
  const _$CategoryDataClass(
      {this.id, this.name, @JsonKey(name: 'restaurant_id') this.restaurantId});

  factory _$CategoryDataClass.fromJson(Map<String, dynamic> json) =>
      _$_$CategoryDataClassFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'restaurant_id')
  final String restaurantId;

  @override
  String toString() {
    return 'CategoryData.categoryDataClass(id: $id, name: $name, restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryDataClass &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(restaurantId);

  @override
  $CategoryDataClassCopyWith<CategoryDataClass> get copyWith =>
      _$CategoryDataClassCopyWithImpl<CategoryDataClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$CategoryDataClassToJson(this);
  }
}

abstract class CategoryDataClass implements CategoryData {
  const factory CategoryDataClass(
          {String id,
          String name,
          @JsonKey(name: 'restaurant_id') String restaurantId}) =
      _$CategoryDataClass;

  factory CategoryDataClass.fromJson(Map<String, dynamic> json) =
      _$CategoryDataClass.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'restaurant_id')
  String get restaurantId;
  @override
  $CategoryDataClassCopyWith<CategoryDataClass> get copyWith;
}
