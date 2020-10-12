// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MenuEventTearOff {
  const _$MenuEventTearOff();

  _GetNearbyMenu getNearbyMenu(MenuRequestByNearby request) {
    return _GetNearbyMenu(
      request,
    );
  }

  _GetRecommendedMenu getRecommendedMenu(MenuRequestByNearby request) {
    return _GetRecommendedMenu(
      request,
    );
  }

  _GetMenuBook getMenuBook(MenuBookRequest menuBookRequest) {
    return _GetMenuBook(
      menuBookRequest,
    );
  }

  _GetSingleMenu getSingleMenu(String menuId) {
    return _GetSingleMenu(
      menuId,
    );
  }

  _GetAllMenu getAllMenu(String paginate, String page) {
    return _GetAllMenu(
      paginate,
      page,
    );
  }

  _GetAllMenuBook getAllMenuBook(String paginate, String page) {
    return _GetAllMenuBook(
      paginate,
      page,
    );
  }
}

// ignore: unused_element
const $MenuEvent = _$MenuEventTearOff();

mixin _$MenuEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNearbyMenu(MenuRequestByNearby request),
    @required Result getRecommendedMenu(MenuRequestByNearby request),
    @required Result getMenuBook(MenuBookRequest menuBookRequest),
    @required Result getSingleMenu(String menuId),
    @required Result getAllMenu(String paginate, String page),
    @required Result getAllMenuBook(String paginate, String page),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNearbyMenu(MenuRequestByNearby request),
    Result getRecommendedMenu(MenuRequestByNearby request),
    Result getMenuBook(MenuBookRequest menuBookRequest),
    Result getSingleMenu(String menuId),
    Result getAllMenu(String paginate, String page),
    Result getAllMenuBook(String paginate, String page),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNearbyMenu(_GetNearbyMenu value),
    @required Result getRecommendedMenu(_GetRecommendedMenu value),
    @required Result getMenuBook(_GetMenuBook value),
    @required Result getSingleMenu(_GetSingleMenu value),
    @required Result getAllMenu(_GetAllMenu value),
    @required Result getAllMenuBook(_GetAllMenuBook value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNearbyMenu(_GetNearbyMenu value),
    Result getRecommendedMenu(_GetRecommendedMenu value),
    Result getMenuBook(_GetMenuBook value),
    Result getSingleMenu(_GetSingleMenu value),
    Result getAllMenu(_GetAllMenu value),
    Result getAllMenuBook(_GetAllMenuBook value),
    @required Result orElse(),
  });
}

abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res>;
}

class _$MenuEventCopyWithImpl<$Res> implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  final MenuEvent _value;
  // ignore: unused_field
  final $Res Function(MenuEvent) _then;
}

abstract class _$GetNearbyMenuCopyWith<$Res> {
  factory _$GetNearbyMenuCopyWith(
          _GetNearbyMenu value, $Res Function(_GetNearbyMenu) then) =
      __$GetNearbyMenuCopyWithImpl<$Res>;
  $Res call({MenuRequestByNearby request});
}

class __$GetNearbyMenuCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements _$GetNearbyMenuCopyWith<$Res> {
  __$GetNearbyMenuCopyWithImpl(
      _GetNearbyMenu _value, $Res Function(_GetNearbyMenu) _then)
      : super(_value, (v) => _then(v as _GetNearbyMenu));

  @override
  _GetNearbyMenu get _value => super._value as _GetNearbyMenu;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(_GetNearbyMenu(
      request == freezed ? _value.request : request as MenuRequestByNearby,
    ));
  }
}

class _$_GetNearbyMenu implements _GetNearbyMenu {
  const _$_GetNearbyMenu(this.request) : assert(request != null);

  @override
  final MenuRequestByNearby request;

  @override
  String toString() {
    return 'MenuEvent.getNearbyMenu(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetNearbyMenu &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @override
  _$GetNearbyMenuCopyWith<_GetNearbyMenu> get copyWith =>
      __$GetNearbyMenuCopyWithImpl<_GetNearbyMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNearbyMenu(MenuRequestByNearby request),
    @required Result getRecommendedMenu(MenuRequestByNearby request),
    @required Result getMenuBook(MenuBookRequest menuBookRequest),
    @required Result getSingleMenu(String menuId),
    @required Result getAllMenu(String paginate, String page),
    @required Result getAllMenuBook(String paginate, String page),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getNearbyMenu(request);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNearbyMenu(MenuRequestByNearby request),
    Result getRecommendedMenu(MenuRequestByNearby request),
    Result getMenuBook(MenuBookRequest menuBookRequest),
    Result getSingleMenu(String menuId),
    Result getAllMenu(String paginate, String page),
    Result getAllMenuBook(String paginate, String page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getNearbyMenu != null) {
      return getNearbyMenu(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNearbyMenu(_GetNearbyMenu value),
    @required Result getRecommendedMenu(_GetRecommendedMenu value),
    @required Result getMenuBook(_GetMenuBook value),
    @required Result getSingleMenu(_GetSingleMenu value),
    @required Result getAllMenu(_GetAllMenu value),
    @required Result getAllMenuBook(_GetAllMenuBook value),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getNearbyMenu(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNearbyMenu(_GetNearbyMenu value),
    Result getRecommendedMenu(_GetRecommendedMenu value),
    Result getMenuBook(_GetMenuBook value),
    Result getSingleMenu(_GetSingleMenu value),
    Result getAllMenu(_GetAllMenu value),
    Result getAllMenuBook(_GetAllMenuBook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getNearbyMenu != null) {
      return getNearbyMenu(this);
    }
    return orElse();
  }
}

abstract class _GetNearbyMenu implements MenuEvent {
  const factory _GetNearbyMenu(MenuRequestByNearby request) = _$_GetNearbyMenu;

  MenuRequestByNearby get request;
  _$GetNearbyMenuCopyWith<_GetNearbyMenu> get copyWith;
}

abstract class _$GetRecommendedMenuCopyWith<$Res> {
  factory _$GetRecommendedMenuCopyWith(
          _GetRecommendedMenu value, $Res Function(_GetRecommendedMenu) then) =
      __$GetRecommendedMenuCopyWithImpl<$Res>;
  $Res call({MenuRequestByNearby request});
}

class __$GetRecommendedMenuCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res>
    implements _$GetRecommendedMenuCopyWith<$Res> {
  __$GetRecommendedMenuCopyWithImpl(
      _GetRecommendedMenu _value, $Res Function(_GetRecommendedMenu) _then)
      : super(_value, (v) => _then(v as _GetRecommendedMenu));

  @override
  _GetRecommendedMenu get _value => super._value as _GetRecommendedMenu;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(_GetRecommendedMenu(
      request == freezed ? _value.request : request as MenuRequestByNearby,
    ));
  }
}

class _$_GetRecommendedMenu implements _GetRecommendedMenu {
  const _$_GetRecommendedMenu(this.request) : assert(request != null);

  @override
  final MenuRequestByNearby request;

  @override
  String toString() {
    return 'MenuEvent.getRecommendedMenu(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetRecommendedMenu &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @override
  _$GetRecommendedMenuCopyWith<_GetRecommendedMenu> get copyWith =>
      __$GetRecommendedMenuCopyWithImpl<_GetRecommendedMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNearbyMenu(MenuRequestByNearby request),
    @required Result getRecommendedMenu(MenuRequestByNearby request),
    @required Result getMenuBook(MenuBookRequest menuBookRequest),
    @required Result getSingleMenu(String menuId),
    @required Result getAllMenu(String paginate, String page),
    @required Result getAllMenuBook(String paginate, String page),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getRecommendedMenu(request);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNearbyMenu(MenuRequestByNearby request),
    Result getRecommendedMenu(MenuRequestByNearby request),
    Result getMenuBook(MenuBookRequest menuBookRequest),
    Result getSingleMenu(String menuId),
    Result getAllMenu(String paginate, String page),
    Result getAllMenuBook(String paginate, String page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRecommendedMenu != null) {
      return getRecommendedMenu(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNearbyMenu(_GetNearbyMenu value),
    @required Result getRecommendedMenu(_GetRecommendedMenu value),
    @required Result getMenuBook(_GetMenuBook value),
    @required Result getSingleMenu(_GetSingleMenu value),
    @required Result getAllMenu(_GetAllMenu value),
    @required Result getAllMenuBook(_GetAllMenuBook value),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getRecommendedMenu(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNearbyMenu(_GetNearbyMenu value),
    Result getRecommendedMenu(_GetRecommendedMenu value),
    Result getMenuBook(_GetMenuBook value),
    Result getSingleMenu(_GetSingleMenu value),
    Result getAllMenu(_GetAllMenu value),
    Result getAllMenuBook(_GetAllMenuBook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRecommendedMenu != null) {
      return getRecommendedMenu(this);
    }
    return orElse();
  }
}

abstract class _GetRecommendedMenu implements MenuEvent {
  const factory _GetRecommendedMenu(MenuRequestByNearby request) =
      _$_GetRecommendedMenu;

  MenuRequestByNearby get request;
  _$GetRecommendedMenuCopyWith<_GetRecommendedMenu> get copyWith;
}

abstract class _$GetMenuBookCopyWith<$Res> {
  factory _$GetMenuBookCopyWith(
          _GetMenuBook value, $Res Function(_GetMenuBook) then) =
      __$GetMenuBookCopyWithImpl<$Res>;
  $Res call({MenuBookRequest menuBookRequest});
}

class __$GetMenuBookCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements _$GetMenuBookCopyWith<$Res> {
  __$GetMenuBookCopyWithImpl(
      _GetMenuBook _value, $Res Function(_GetMenuBook) _then)
      : super(_value, (v) => _then(v as _GetMenuBook));

  @override
  _GetMenuBook get _value => super._value as _GetMenuBook;

  @override
  $Res call({
    Object menuBookRequest = freezed,
  }) {
    return _then(_GetMenuBook(
      menuBookRequest == freezed
          ? _value.menuBookRequest
          : menuBookRequest as MenuBookRequest,
    ));
  }
}

class _$_GetMenuBook implements _GetMenuBook {
  const _$_GetMenuBook(this.menuBookRequest) : assert(menuBookRequest != null);

  @override
  final MenuBookRequest menuBookRequest;

  @override
  String toString() {
    return 'MenuEvent.getMenuBook(menuBookRequest: $menuBookRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMenuBook &&
            (identical(other.menuBookRequest, menuBookRequest) ||
                const DeepCollectionEquality()
                    .equals(other.menuBookRequest, menuBookRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(menuBookRequest);

  @override
  _$GetMenuBookCopyWith<_GetMenuBook> get copyWith =>
      __$GetMenuBookCopyWithImpl<_GetMenuBook>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNearbyMenu(MenuRequestByNearby request),
    @required Result getRecommendedMenu(MenuRequestByNearby request),
    @required Result getMenuBook(MenuBookRequest menuBookRequest),
    @required Result getSingleMenu(String menuId),
    @required Result getAllMenu(String paginate, String page),
    @required Result getAllMenuBook(String paginate, String page),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getMenuBook(menuBookRequest);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNearbyMenu(MenuRequestByNearby request),
    Result getRecommendedMenu(MenuRequestByNearby request),
    Result getMenuBook(MenuBookRequest menuBookRequest),
    Result getSingleMenu(String menuId),
    Result getAllMenu(String paginate, String page),
    Result getAllMenuBook(String paginate, String page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMenuBook != null) {
      return getMenuBook(menuBookRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNearbyMenu(_GetNearbyMenu value),
    @required Result getRecommendedMenu(_GetRecommendedMenu value),
    @required Result getMenuBook(_GetMenuBook value),
    @required Result getSingleMenu(_GetSingleMenu value),
    @required Result getAllMenu(_GetAllMenu value),
    @required Result getAllMenuBook(_GetAllMenuBook value),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getMenuBook(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNearbyMenu(_GetNearbyMenu value),
    Result getRecommendedMenu(_GetRecommendedMenu value),
    Result getMenuBook(_GetMenuBook value),
    Result getSingleMenu(_GetSingleMenu value),
    Result getAllMenu(_GetAllMenu value),
    Result getAllMenuBook(_GetAllMenuBook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMenuBook != null) {
      return getMenuBook(this);
    }
    return orElse();
  }
}

abstract class _GetMenuBook implements MenuEvent {
  const factory _GetMenuBook(MenuBookRequest menuBookRequest) = _$_GetMenuBook;

  MenuBookRequest get menuBookRequest;
  _$GetMenuBookCopyWith<_GetMenuBook> get copyWith;
}

abstract class _$GetSingleMenuCopyWith<$Res> {
  factory _$GetSingleMenuCopyWith(
          _GetSingleMenu value, $Res Function(_GetSingleMenu) then) =
      __$GetSingleMenuCopyWithImpl<$Res>;
  $Res call({String menuId});
}

class __$GetSingleMenuCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements _$GetSingleMenuCopyWith<$Res> {
  __$GetSingleMenuCopyWithImpl(
      _GetSingleMenu _value, $Res Function(_GetSingleMenu) _then)
      : super(_value, (v) => _then(v as _GetSingleMenu));

  @override
  _GetSingleMenu get _value => super._value as _GetSingleMenu;

  @override
  $Res call({
    Object menuId = freezed,
  }) {
    return _then(_GetSingleMenu(
      menuId == freezed ? _value.menuId : menuId as String,
    ));
  }
}

class _$_GetSingleMenu implements _GetSingleMenu {
  const _$_GetSingleMenu(this.menuId) : assert(menuId != null);

  @override
  final String menuId;

  @override
  String toString() {
    return 'MenuEvent.getSingleMenu(menuId: $menuId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSingleMenu &&
            (identical(other.menuId, menuId) ||
                const DeepCollectionEquality().equals(other.menuId, menuId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(menuId);

  @override
  _$GetSingleMenuCopyWith<_GetSingleMenu> get copyWith =>
      __$GetSingleMenuCopyWithImpl<_GetSingleMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNearbyMenu(MenuRequestByNearby request),
    @required Result getRecommendedMenu(MenuRequestByNearby request),
    @required Result getMenuBook(MenuBookRequest menuBookRequest),
    @required Result getSingleMenu(String menuId),
    @required Result getAllMenu(String paginate, String page),
    @required Result getAllMenuBook(String paginate, String page),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getSingleMenu(menuId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNearbyMenu(MenuRequestByNearby request),
    Result getRecommendedMenu(MenuRequestByNearby request),
    Result getMenuBook(MenuBookRequest menuBookRequest),
    Result getSingleMenu(String menuId),
    Result getAllMenu(String paginate, String page),
    Result getAllMenuBook(String paginate, String page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSingleMenu != null) {
      return getSingleMenu(menuId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNearbyMenu(_GetNearbyMenu value),
    @required Result getRecommendedMenu(_GetRecommendedMenu value),
    @required Result getMenuBook(_GetMenuBook value),
    @required Result getSingleMenu(_GetSingleMenu value),
    @required Result getAllMenu(_GetAllMenu value),
    @required Result getAllMenuBook(_GetAllMenuBook value),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getSingleMenu(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNearbyMenu(_GetNearbyMenu value),
    Result getRecommendedMenu(_GetRecommendedMenu value),
    Result getMenuBook(_GetMenuBook value),
    Result getSingleMenu(_GetSingleMenu value),
    Result getAllMenu(_GetAllMenu value),
    Result getAllMenuBook(_GetAllMenuBook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSingleMenu != null) {
      return getSingleMenu(this);
    }
    return orElse();
  }
}

abstract class _GetSingleMenu implements MenuEvent {
  const factory _GetSingleMenu(String menuId) = _$_GetSingleMenu;

  String get menuId;
  _$GetSingleMenuCopyWith<_GetSingleMenu> get copyWith;
}

abstract class _$GetAllMenuCopyWith<$Res> {
  factory _$GetAllMenuCopyWith(
          _GetAllMenu value, $Res Function(_GetAllMenu) then) =
      __$GetAllMenuCopyWithImpl<$Res>;
  $Res call({String paginate, String page});
}

class __$GetAllMenuCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements _$GetAllMenuCopyWith<$Res> {
  __$GetAllMenuCopyWithImpl(
      _GetAllMenu _value, $Res Function(_GetAllMenu) _then)
      : super(_value, (v) => _then(v as _GetAllMenu));

  @override
  _GetAllMenu get _value => super._value as _GetAllMenu;

  @override
  $Res call({
    Object paginate = freezed,
    Object page = freezed,
  }) {
    return _then(_GetAllMenu(
      paginate == freezed ? _value.paginate : paginate as String,
      page == freezed ? _value.page : page as String,
    ));
  }
}

class _$_GetAllMenu implements _GetAllMenu {
  const _$_GetAllMenu(this.paginate, this.page)
      : assert(paginate != null),
        assert(page != null);

  @override
  final String paginate;
  @override
  final String page;

  @override
  String toString() {
    return 'MenuEvent.getAllMenu(paginate: $paginate, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllMenu &&
            (identical(other.paginate, paginate) ||
                const DeepCollectionEquality()
                    .equals(other.paginate, paginate)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paginate) ^
      const DeepCollectionEquality().hash(page);

  @override
  _$GetAllMenuCopyWith<_GetAllMenu> get copyWith =>
      __$GetAllMenuCopyWithImpl<_GetAllMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNearbyMenu(MenuRequestByNearby request),
    @required Result getRecommendedMenu(MenuRequestByNearby request),
    @required Result getMenuBook(MenuBookRequest menuBookRequest),
    @required Result getSingleMenu(String menuId),
    @required Result getAllMenu(String paginate, String page),
    @required Result getAllMenuBook(String paginate, String page),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getAllMenu(paginate, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNearbyMenu(MenuRequestByNearby request),
    Result getRecommendedMenu(MenuRequestByNearby request),
    Result getMenuBook(MenuBookRequest menuBookRequest),
    Result getSingleMenu(String menuId),
    Result getAllMenu(String paginate, String page),
    Result getAllMenuBook(String paginate, String page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenu != null) {
      return getAllMenu(paginate, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNearbyMenu(_GetNearbyMenu value),
    @required Result getRecommendedMenu(_GetRecommendedMenu value),
    @required Result getMenuBook(_GetMenuBook value),
    @required Result getSingleMenu(_GetSingleMenu value),
    @required Result getAllMenu(_GetAllMenu value),
    @required Result getAllMenuBook(_GetAllMenuBook value),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getAllMenu(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNearbyMenu(_GetNearbyMenu value),
    Result getRecommendedMenu(_GetRecommendedMenu value),
    Result getMenuBook(_GetMenuBook value),
    Result getSingleMenu(_GetSingleMenu value),
    Result getAllMenu(_GetAllMenu value),
    Result getAllMenuBook(_GetAllMenuBook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenu != null) {
      return getAllMenu(this);
    }
    return orElse();
  }
}

abstract class _GetAllMenu implements MenuEvent {
  const factory _GetAllMenu(String paginate, String page) = _$_GetAllMenu;

  String get paginate;
  String get page;
  _$GetAllMenuCopyWith<_GetAllMenu> get copyWith;
}

abstract class _$GetAllMenuBookCopyWith<$Res> {
  factory _$GetAllMenuBookCopyWith(
          _GetAllMenuBook value, $Res Function(_GetAllMenuBook) then) =
      __$GetAllMenuBookCopyWithImpl<$Res>;
  $Res call({String paginate, String page});
}

class __$GetAllMenuBookCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements _$GetAllMenuBookCopyWith<$Res> {
  __$GetAllMenuBookCopyWithImpl(
      _GetAllMenuBook _value, $Res Function(_GetAllMenuBook) _then)
      : super(_value, (v) => _then(v as _GetAllMenuBook));

  @override
  _GetAllMenuBook get _value => super._value as _GetAllMenuBook;

  @override
  $Res call({
    Object paginate = freezed,
    Object page = freezed,
  }) {
    return _then(_GetAllMenuBook(
      paginate == freezed ? _value.paginate : paginate as String,
      page == freezed ? _value.page : page as String,
    ));
  }
}

class _$_GetAllMenuBook implements _GetAllMenuBook {
  const _$_GetAllMenuBook(this.paginate, this.page)
      : assert(paginate != null),
        assert(page != null);

  @override
  final String paginate;
  @override
  final String page;

  @override
  String toString() {
    return 'MenuEvent.getAllMenuBook(paginate: $paginate, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllMenuBook &&
            (identical(other.paginate, paginate) ||
                const DeepCollectionEquality()
                    .equals(other.paginate, paginate)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paginate) ^
      const DeepCollectionEquality().hash(page);

  @override
  _$GetAllMenuBookCopyWith<_GetAllMenuBook> get copyWith =>
      __$GetAllMenuBookCopyWithImpl<_GetAllMenuBook>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNearbyMenu(MenuRequestByNearby request),
    @required Result getRecommendedMenu(MenuRequestByNearby request),
    @required Result getMenuBook(MenuBookRequest menuBookRequest),
    @required Result getSingleMenu(String menuId),
    @required Result getAllMenu(String paginate, String page),
    @required Result getAllMenuBook(String paginate, String page),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getAllMenuBook(paginate, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNearbyMenu(MenuRequestByNearby request),
    Result getRecommendedMenu(MenuRequestByNearby request),
    Result getMenuBook(MenuBookRequest menuBookRequest),
    Result getSingleMenu(String menuId),
    Result getAllMenu(String paginate, String page),
    Result getAllMenuBook(String paginate, String page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenuBook != null) {
      return getAllMenuBook(paginate, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNearbyMenu(_GetNearbyMenu value),
    @required Result getRecommendedMenu(_GetRecommendedMenu value),
    @required Result getMenuBook(_GetMenuBook value),
    @required Result getSingleMenu(_GetSingleMenu value),
    @required Result getAllMenu(_GetAllMenu value),
    @required Result getAllMenuBook(_GetAllMenuBook value),
  }) {
    assert(getNearbyMenu != null);
    assert(getRecommendedMenu != null);
    assert(getMenuBook != null);
    assert(getSingleMenu != null);
    assert(getAllMenu != null);
    assert(getAllMenuBook != null);
    return getAllMenuBook(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNearbyMenu(_GetNearbyMenu value),
    Result getRecommendedMenu(_GetRecommendedMenu value),
    Result getMenuBook(_GetMenuBook value),
    Result getSingleMenu(_GetSingleMenu value),
    Result getAllMenu(_GetAllMenu value),
    Result getAllMenuBook(_GetAllMenuBook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenuBook != null) {
      return getAllMenuBook(this);
    }
    return orElse();
  }
}

abstract class _GetAllMenuBook implements MenuEvent {
  const factory _GetAllMenuBook(String paginate, String page) =
      _$_GetAllMenuBook;

  String get paginate;
  String get page;
  _$GetAllMenuBookCopyWith<_GetAllMenuBook> get copyWith;
}

class _$MenuStateTearOff {
  const _$MenuStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _NearbyMenuOption nearbyMenuOption(
      {@required bool isLoading,
      @required Option<Either<MenuFailure, MenuResponse>> menuResponse}) {
    return _NearbyMenuOption(
      isLoading: isLoading,
      menuResponse: menuResponse,
    );
  }

  _GetMenuBookByRestaurant getMenuBookByRestaurant(
      {@required
          bool isLoading,
      @required
          Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse}) {
    return _GetMenuBookByRestaurant(
      isLoading: isLoading,
      menuBookResponse: menuBookResponse,
    );
  }

  _SingleMenuWithRestaurantData singleMenuWithRestaurantData(
      {@required
          bool isLoading,
      @required
          Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
              singleMenuOption}) {
    return _SingleMenuWithRestaurantData(
      isLoading: isLoading,
      singleMenuOption: singleMenuOption,
    );
  }

  _GetAllMenuOption getAllMenuOption(
      {@required
          bool isLoading,
      @required
          Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption}) {
    return _GetAllMenuOption(
      isLoading: isLoading,
      allMenuOption: allMenuOption,
    );
  }

  _GetAllMenuBookOption getAllMenuBookOption(
      {@required
          bool isLoading,
      @required
          Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData}) {
    return _GetAllMenuBookOption(
      isLoading: isLoading,
      allMenuBookData: allMenuBookData,
    );
  }
}

// ignore: unused_element
const $MenuState = _$MenuStateTearOff();

mixin _$MenuState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result nearbyMenuOption(bool isLoading,
            Option<Either<MenuFailure, MenuResponse>> menuResponse),
    @required
        Result getMenuBookByRestaurant(bool isLoading,
            Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    @required
        Result singleMenuWithRestaurantData(
            bool isLoading,
            Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
                singleMenuOption),
    @required
        Result getAllMenuOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    @required
        Result getAllMenuBookOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result nearbyMenuOption(
        bool isLoading, Option<Either<MenuFailure, MenuResponse>> menuResponse),
    Result getMenuBookByRestaurant(bool isLoading,
        Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    Result singleMenuWithRestaurantData(
        bool isLoading,
        Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
            singleMenuOption),
    Result getAllMenuOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    Result getAllMenuBookOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result nearbyMenuOption(_NearbyMenuOption value),
    @required Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    @required
        Result singleMenuWithRestaurantData(
            _SingleMenuWithRestaurantData value),
    @required Result getAllMenuOption(_GetAllMenuOption value),
    @required Result getAllMenuBookOption(_GetAllMenuBookOption value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result nearbyMenuOption(_NearbyMenuOption value),
    Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    Result singleMenuWithRestaurantData(_SingleMenuWithRestaurantData value),
    Result getAllMenuOption(_GetAllMenuOption value),
    Result getAllMenuBookOption(_GetAllMenuBookOption value),
    @required Result orElse(),
  });
}

abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res>;
}

class _$MenuStateCopyWithImpl<$Res> implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  final MenuState _value;
  // ignore: unused_field
  final $Res Function(MenuState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MenuState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result nearbyMenuOption(bool isLoading,
            Option<Either<MenuFailure, MenuResponse>> menuResponse),
    @required
        Result getMenuBookByRestaurant(bool isLoading,
            Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    @required
        Result singleMenuWithRestaurantData(
            bool isLoading,
            Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
                singleMenuOption),
    @required
        Result getAllMenuOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    @required
        Result getAllMenuBookOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result nearbyMenuOption(
        bool isLoading, Option<Either<MenuFailure, MenuResponse>> menuResponse),
    Result getMenuBookByRestaurant(bool isLoading,
        Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    Result singleMenuWithRestaurantData(
        bool isLoading,
        Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
            singleMenuOption),
    Result getAllMenuOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    Result getAllMenuBookOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result nearbyMenuOption(_NearbyMenuOption value),
    @required Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    @required
        Result singleMenuWithRestaurantData(
            _SingleMenuWithRestaurantData value),
    @required Result getAllMenuOption(_GetAllMenuOption value),
    @required Result getAllMenuBookOption(_GetAllMenuBookOption value),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result nearbyMenuOption(_NearbyMenuOption value),
    Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    Result singleMenuWithRestaurantData(_SingleMenuWithRestaurantData value),
    Result getAllMenuOption(_GetAllMenuOption value),
    Result getAllMenuBookOption(_GetAllMenuBookOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MenuState {
  const factory _Initial() = _$_Initial;
}

abstract class _$NearbyMenuOptionCopyWith<$Res> {
  factory _$NearbyMenuOptionCopyWith(
          _NearbyMenuOption value, $Res Function(_NearbyMenuOption) then) =
      __$NearbyMenuOptionCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, Option<Either<MenuFailure, MenuResponse>> menuResponse});
}

class __$NearbyMenuOptionCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res>
    implements _$NearbyMenuOptionCopyWith<$Res> {
  __$NearbyMenuOptionCopyWithImpl(
      _NearbyMenuOption _value, $Res Function(_NearbyMenuOption) _then)
      : super(_value, (v) => _then(v as _NearbyMenuOption));

  @override
  _NearbyMenuOption get _value => super._value as _NearbyMenuOption;

  @override
  $Res call({
    Object isLoading = freezed,
    Object menuResponse = freezed,
  }) {
    return _then(_NearbyMenuOption(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      menuResponse: menuResponse == freezed
          ? _value.menuResponse
          : menuResponse as Option<Either<MenuFailure, MenuResponse>>,
    ));
  }
}

class _$_NearbyMenuOption implements _NearbyMenuOption {
  const _$_NearbyMenuOption(
      {@required this.isLoading, @required this.menuResponse})
      : assert(isLoading != null),
        assert(menuResponse != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<MenuFailure, MenuResponse>> menuResponse;

  @override
  String toString() {
    return 'MenuState.nearbyMenuOption(isLoading: $isLoading, menuResponse: $menuResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NearbyMenuOption &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.menuResponse, menuResponse) ||
                const DeepCollectionEquality()
                    .equals(other.menuResponse, menuResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(menuResponse);

  @override
  _$NearbyMenuOptionCopyWith<_NearbyMenuOption> get copyWith =>
      __$NearbyMenuOptionCopyWithImpl<_NearbyMenuOption>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result nearbyMenuOption(bool isLoading,
            Option<Either<MenuFailure, MenuResponse>> menuResponse),
    @required
        Result getMenuBookByRestaurant(bool isLoading,
            Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    @required
        Result singleMenuWithRestaurantData(
            bool isLoading,
            Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
                singleMenuOption),
    @required
        Result getAllMenuOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    @required
        Result getAllMenuBookOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return nearbyMenuOption(isLoading, menuResponse);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result nearbyMenuOption(
        bool isLoading, Option<Either<MenuFailure, MenuResponse>> menuResponse),
    Result getMenuBookByRestaurant(bool isLoading,
        Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    Result singleMenuWithRestaurantData(
        bool isLoading,
        Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
            singleMenuOption),
    Result getAllMenuOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    Result getAllMenuBookOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nearbyMenuOption != null) {
      return nearbyMenuOption(isLoading, menuResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result nearbyMenuOption(_NearbyMenuOption value),
    @required Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    @required
        Result singleMenuWithRestaurantData(
            _SingleMenuWithRestaurantData value),
    @required Result getAllMenuOption(_GetAllMenuOption value),
    @required Result getAllMenuBookOption(_GetAllMenuBookOption value),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return nearbyMenuOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result nearbyMenuOption(_NearbyMenuOption value),
    Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    Result singleMenuWithRestaurantData(_SingleMenuWithRestaurantData value),
    Result getAllMenuOption(_GetAllMenuOption value),
    Result getAllMenuBookOption(_GetAllMenuBookOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nearbyMenuOption != null) {
      return nearbyMenuOption(this);
    }
    return orElse();
  }
}

abstract class _NearbyMenuOption implements MenuState {
  const factory _NearbyMenuOption(
          {@required bool isLoading,
          @required Option<Either<MenuFailure, MenuResponse>> menuResponse}) =
      _$_NearbyMenuOption;

  bool get isLoading;
  Option<Either<MenuFailure, MenuResponse>> get menuResponse;
  _$NearbyMenuOptionCopyWith<_NearbyMenuOption> get copyWith;
}

abstract class _$GetMenuBookByRestaurantCopyWith<$Res> {
  factory _$GetMenuBookByRestaurantCopyWith(_GetMenuBookByRestaurant value,
          $Res Function(_GetMenuBookByRestaurant) then) =
      __$GetMenuBookByRestaurantCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse});
}

class __$GetMenuBookByRestaurantCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res>
    implements _$GetMenuBookByRestaurantCopyWith<$Res> {
  __$GetMenuBookByRestaurantCopyWithImpl(_GetMenuBookByRestaurant _value,
      $Res Function(_GetMenuBookByRestaurant) _then)
      : super(_value, (v) => _then(v as _GetMenuBookByRestaurant));

  @override
  _GetMenuBookByRestaurant get _value =>
      super._value as _GetMenuBookByRestaurant;

  @override
  $Res call({
    Object isLoading = freezed,
    Object menuBookResponse = freezed,
  }) {
    return _then(_GetMenuBookByRestaurant(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      menuBookResponse: menuBookResponse == freezed
          ? _value.menuBookResponse
          : menuBookResponse as Option<Either<MenuFailure, MenuBookResponse>>,
    ));
  }
}

class _$_GetMenuBookByRestaurant implements _GetMenuBookByRestaurant {
  const _$_GetMenuBookByRestaurant(
      {@required this.isLoading, @required this.menuBookResponse})
      : assert(isLoading != null),
        assert(menuBookResponse != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse;

  @override
  String toString() {
    return 'MenuState.getMenuBookByRestaurant(isLoading: $isLoading, menuBookResponse: $menuBookResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMenuBookByRestaurant &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.menuBookResponse, menuBookResponse) ||
                const DeepCollectionEquality()
                    .equals(other.menuBookResponse, menuBookResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(menuBookResponse);

  @override
  _$GetMenuBookByRestaurantCopyWith<_GetMenuBookByRestaurant> get copyWith =>
      __$GetMenuBookByRestaurantCopyWithImpl<_GetMenuBookByRestaurant>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result nearbyMenuOption(bool isLoading,
            Option<Either<MenuFailure, MenuResponse>> menuResponse),
    @required
        Result getMenuBookByRestaurant(bool isLoading,
            Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    @required
        Result singleMenuWithRestaurantData(
            bool isLoading,
            Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
                singleMenuOption),
    @required
        Result getAllMenuOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    @required
        Result getAllMenuBookOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return getMenuBookByRestaurant(isLoading, menuBookResponse);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result nearbyMenuOption(
        bool isLoading, Option<Either<MenuFailure, MenuResponse>> menuResponse),
    Result getMenuBookByRestaurant(bool isLoading,
        Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    Result singleMenuWithRestaurantData(
        bool isLoading,
        Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
            singleMenuOption),
    Result getAllMenuOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    Result getAllMenuBookOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMenuBookByRestaurant != null) {
      return getMenuBookByRestaurant(isLoading, menuBookResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result nearbyMenuOption(_NearbyMenuOption value),
    @required Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    @required
        Result singleMenuWithRestaurantData(
            _SingleMenuWithRestaurantData value),
    @required Result getAllMenuOption(_GetAllMenuOption value),
    @required Result getAllMenuBookOption(_GetAllMenuBookOption value),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return getMenuBookByRestaurant(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result nearbyMenuOption(_NearbyMenuOption value),
    Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    Result singleMenuWithRestaurantData(_SingleMenuWithRestaurantData value),
    Result getAllMenuOption(_GetAllMenuOption value),
    Result getAllMenuBookOption(_GetAllMenuBookOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMenuBookByRestaurant != null) {
      return getMenuBookByRestaurant(this);
    }
    return orElse();
  }
}

abstract class _GetMenuBookByRestaurant implements MenuState {
  const factory _GetMenuBookByRestaurant(
          {@required
              bool isLoading,
          @required
              Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse}) =
      _$_GetMenuBookByRestaurant;

  bool get isLoading;
  Option<Either<MenuFailure, MenuBookResponse>> get menuBookResponse;
  _$GetMenuBookByRestaurantCopyWith<_GetMenuBookByRestaurant> get copyWith;
}

abstract class _$SingleMenuWithRestaurantDataCopyWith<$Res> {
  factory _$SingleMenuWithRestaurantDataCopyWith(
          _SingleMenuWithRestaurantData value,
          $Res Function(_SingleMenuWithRestaurantData) then) =
      __$SingleMenuWithRestaurantDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
          singleMenuOption});
}

class __$SingleMenuWithRestaurantDataCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res>
    implements _$SingleMenuWithRestaurantDataCopyWith<$Res> {
  __$SingleMenuWithRestaurantDataCopyWithImpl(
      _SingleMenuWithRestaurantData _value,
      $Res Function(_SingleMenuWithRestaurantData) _then)
      : super(_value, (v) => _then(v as _SingleMenuWithRestaurantData));

  @override
  _SingleMenuWithRestaurantData get _value =>
      super._value as _SingleMenuWithRestaurantData;

  @override
  $Res call({
    Object isLoading = freezed,
    Object singleMenuOption = freezed,
  }) {
    return _then(_SingleMenuWithRestaurantData(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      singleMenuOption: singleMenuOption == freezed
          ? _value.singleMenuOption
          : singleMenuOption
              as Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>,
    ));
  }
}

class _$_SingleMenuWithRestaurantData implements _SingleMenuWithRestaurantData {
  const _$_SingleMenuWithRestaurantData(
      {@required this.isLoading, @required this.singleMenuOption})
      : assert(isLoading != null),
        assert(singleMenuOption != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
      singleMenuOption;

  @override
  String toString() {
    return 'MenuState.singleMenuWithRestaurantData(isLoading: $isLoading, singleMenuOption: $singleMenuOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleMenuWithRestaurantData &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.singleMenuOption, singleMenuOption) ||
                const DeepCollectionEquality()
                    .equals(other.singleMenuOption, singleMenuOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(singleMenuOption);

  @override
  _$SingleMenuWithRestaurantDataCopyWith<_SingleMenuWithRestaurantData>
      get copyWith => __$SingleMenuWithRestaurantDataCopyWithImpl<
          _SingleMenuWithRestaurantData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result nearbyMenuOption(bool isLoading,
            Option<Either<MenuFailure, MenuResponse>> menuResponse),
    @required
        Result getMenuBookByRestaurant(bool isLoading,
            Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    @required
        Result singleMenuWithRestaurantData(
            bool isLoading,
            Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
                singleMenuOption),
    @required
        Result getAllMenuOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    @required
        Result getAllMenuBookOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return singleMenuWithRestaurantData(isLoading, singleMenuOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result nearbyMenuOption(
        bool isLoading, Option<Either<MenuFailure, MenuResponse>> menuResponse),
    Result getMenuBookByRestaurant(bool isLoading,
        Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    Result singleMenuWithRestaurantData(
        bool isLoading,
        Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
            singleMenuOption),
    Result getAllMenuOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    Result getAllMenuBookOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (singleMenuWithRestaurantData != null) {
      return singleMenuWithRestaurantData(isLoading, singleMenuOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result nearbyMenuOption(_NearbyMenuOption value),
    @required Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    @required
        Result singleMenuWithRestaurantData(
            _SingleMenuWithRestaurantData value),
    @required Result getAllMenuOption(_GetAllMenuOption value),
    @required Result getAllMenuBookOption(_GetAllMenuBookOption value),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return singleMenuWithRestaurantData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result nearbyMenuOption(_NearbyMenuOption value),
    Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    Result singleMenuWithRestaurantData(_SingleMenuWithRestaurantData value),
    Result getAllMenuOption(_GetAllMenuOption value),
    Result getAllMenuBookOption(_GetAllMenuBookOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (singleMenuWithRestaurantData != null) {
      return singleMenuWithRestaurantData(this);
    }
    return orElse();
  }
}

abstract class _SingleMenuWithRestaurantData implements MenuState {
  const factory _SingleMenuWithRestaurantData(
      {@required
          bool isLoading,
      @required
          Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
              singleMenuOption}) = _$_SingleMenuWithRestaurantData;

  bool get isLoading;
  Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
      get singleMenuOption;
  _$SingleMenuWithRestaurantDataCopyWith<_SingleMenuWithRestaurantData>
      get copyWith;
}

abstract class _$GetAllMenuOptionCopyWith<$Res> {
  factory _$GetAllMenuOptionCopyWith(
          _GetAllMenuOption value, $Res Function(_GetAllMenuOption) then) =
      __$GetAllMenuOptionCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption});
}

class __$GetAllMenuOptionCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res>
    implements _$GetAllMenuOptionCopyWith<$Res> {
  __$GetAllMenuOptionCopyWithImpl(
      _GetAllMenuOption _value, $Res Function(_GetAllMenuOption) _then)
      : super(_value, (v) => _then(v as _GetAllMenuOption));

  @override
  _GetAllMenuOption get _value => super._value as _GetAllMenuOption;

  @override
  $Res call({
    Object isLoading = freezed,
    Object allMenuOption = freezed,
  }) {
    return _then(_GetAllMenuOption(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      allMenuOption: allMenuOption == freezed
          ? _value.allMenuOption
          : allMenuOption as Option<Either<MenuFailure, List<MenuClassData>>>,
    ));
  }
}

class _$_GetAllMenuOption implements _GetAllMenuOption {
  const _$_GetAllMenuOption(
      {@required this.isLoading, @required this.allMenuOption})
      : assert(isLoading != null),
        assert(allMenuOption != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption;

  @override
  String toString() {
    return 'MenuState.getAllMenuOption(isLoading: $isLoading, allMenuOption: $allMenuOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllMenuOption &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.allMenuOption, allMenuOption) ||
                const DeepCollectionEquality()
                    .equals(other.allMenuOption, allMenuOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(allMenuOption);

  @override
  _$GetAllMenuOptionCopyWith<_GetAllMenuOption> get copyWith =>
      __$GetAllMenuOptionCopyWithImpl<_GetAllMenuOption>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result nearbyMenuOption(bool isLoading,
            Option<Either<MenuFailure, MenuResponse>> menuResponse),
    @required
        Result getMenuBookByRestaurant(bool isLoading,
            Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    @required
        Result singleMenuWithRestaurantData(
            bool isLoading,
            Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
                singleMenuOption),
    @required
        Result getAllMenuOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    @required
        Result getAllMenuBookOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return getAllMenuOption(isLoading, allMenuOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result nearbyMenuOption(
        bool isLoading, Option<Either<MenuFailure, MenuResponse>> menuResponse),
    Result getMenuBookByRestaurant(bool isLoading,
        Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    Result singleMenuWithRestaurantData(
        bool isLoading,
        Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
            singleMenuOption),
    Result getAllMenuOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    Result getAllMenuBookOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenuOption != null) {
      return getAllMenuOption(isLoading, allMenuOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result nearbyMenuOption(_NearbyMenuOption value),
    @required Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    @required
        Result singleMenuWithRestaurantData(
            _SingleMenuWithRestaurantData value),
    @required Result getAllMenuOption(_GetAllMenuOption value),
    @required Result getAllMenuBookOption(_GetAllMenuBookOption value),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return getAllMenuOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result nearbyMenuOption(_NearbyMenuOption value),
    Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    Result singleMenuWithRestaurantData(_SingleMenuWithRestaurantData value),
    Result getAllMenuOption(_GetAllMenuOption value),
    Result getAllMenuBookOption(_GetAllMenuBookOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenuOption != null) {
      return getAllMenuOption(this);
    }
    return orElse();
  }
}

abstract class _GetAllMenuOption implements MenuState {
  const factory _GetAllMenuOption(
          {@required
              bool isLoading,
          @required
              Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption}) =
      _$_GetAllMenuOption;

  bool get isLoading;
  Option<Either<MenuFailure, List<MenuClassData>>> get allMenuOption;
  _$GetAllMenuOptionCopyWith<_GetAllMenuOption> get copyWith;
}

abstract class _$GetAllMenuBookOptionCopyWith<$Res> {
  factory _$GetAllMenuBookOptionCopyWith(_GetAllMenuBookOption value,
          $Res Function(_GetAllMenuBookOption) then) =
      __$GetAllMenuBookOptionCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData});
}

class __$GetAllMenuBookOptionCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res>
    implements _$GetAllMenuBookOptionCopyWith<$Res> {
  __$GetAllMenuBookOptionCopyWithImpl(
      _GetAllMenuBookOption _value, $Res Function(_GetAllMenuBookOption) _then)
      : super(_value, (v) => _then(v as _GetAllMenuBookOption));

  @override
  _GetAllMenuBookOption get _value => super._value as _GetAllMenuBookOption;

  @override
  $Res call({
    Object isLoading = freezed,
    Object allMenuBookData = freezed,
  }) {
    return _then(_GetAllMenuBookOption(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      allMenuBookData: allMenuBookData == freezed
          ? _value.allMenuBookData
          : allMenuBookData as Option<Either<MenuFailure, List<MenuBookData>>>,
    ));
  }
}

class _$_GetAllMenuBookOption implements _GetAllMenuBookOption {
  const _$_GetAllMenuBookOption(
      {@required this.isLoading, @required this.allMenuBookData})
      : assert(isLoading != null),
        assert(allMenuBookData != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData;

  @override
  String toString() {
    return 'MenuState.getAllMenuBookOption(isLoading: $isLoading, allMenuBookData: $allMenuBookData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllMenuBookOption &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.allMenuBookData, allMenuBookData) ||
                const DeepCollectionEquality()
                    .equals(other.allMenuBookData, allMenuBookData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(allMenuBookData);

  @override
  _$GetAllMenuBookOptionCopyWith<_GetAllMenuBookOption> get copyWith =>
      __$GetAllMenuBookOptionCopyWithImpl<_GetAllMenuBookOption>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result nearbyMenuOption(bool isLoading,
            Option<Either<MenuFailure, MenuResponse>> menuResponse),
    @required
        Result getMenuBookByRestaurant(bool isLoading,
            Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    @required
        Result singleMenuWithRestaurantData(
            bool isLoading,
            Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
                singleMenuOption),
    @required
        Result getAllMenuOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    @required
        Result getAllMenuBookOption(bool isLoading,
            Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return getAllMenuBookOption(isLoading, allMenuBookData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result nearbyMenuOption(
        bool isLoading, Option<Either<MenuFailure, MenuResponse>> menuResponse),
    Result getMenuBookByRestaurant(bool isLoading,
        Option<Either<MenuFailure, MenuBookResponse>> menuBookResponse),
    Result singleMenuWithRestaurantData(
        bool isLoading,
        Option<Either<MenuFailure, MenuBookResponseWithRestaurant>>
            singleMenuOption),
    Result getAllMenuOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuClassData>>> allMenuOption),
    Result getAllMenuBookOption(bool isLoading,
        Option<Either<MenuFailure, List<MenuBookData>>> allMenuBookData),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenuBookOption != null) {
      return getAllMenuBookOption(isLoading, allMenuBookData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result nearbyMenuOption(_NearbyMenuOption value),
    @required Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    @required
        Result singleMenuWithRestaurantData(
            _SingleMenuWithRestaurantData value),
    @required Result getAllMenuOption(_GetAllMenuOption value),
    @required Result getAllMenuBookOption(_GetAllMenuBookOption value),
  }) {
    assert(initial != null);
    assert(nearbyMenuOption != null);
    assert(getMenuBookByRestaurant != null);
    assert(singleMenuWithRestaurantData != null);
    assert(getAllMenuOption != null);
    assert(getAllMenuBookOption != null);
    return getAllMenuBookOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result nearbyMenuOption(_NearbyMenuOption value),
    Result getMenuBookByRestaurant(_GetMenuBookByRestaurant value),
    Result singleMenuWithRestaurantData(_SingleMenuWithRestaurantData value),
    Result getAllMenuOption(_GetAllMenuOption value),
    Result getAllMenuBookOption(_GetAllMenuBookOption value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenuBookOption != null) {
      return getAllMenuBookOption(this);
    }
    return orElse();
  }
}

abstract class _GetAllMenuBookOption implements MenuState {
  const factory _GetAllMenuBookOption(
      {@required
          bool isLoading,
      @required
          Option<Either<MenuFailure, List<MenuBookData>>>
              allMenuBookData}) = _$_GetAllMenuBookOption;

  bool get isLoading;
  Option<Either<MenuFailure, List<MenuBookData>>> get allMenuBookData;
  _$GetAllMenuBookOptionCopyWith<_GetAllMenuBookOption> get copyWith;
}
