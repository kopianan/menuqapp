// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'menu.freezed.dart';
// part 'menu.g.dart';

// @freezed
// abstract class MenuData with _$MenuData {
//   factory MenuData.data(
//       {String restaurant_id,
//       String restaurant_name,
//       List<Categorie> categories}) = _Data;
//   factory MenuData.category(
//       {String name, int sorting, List<MenuPhoto> menuPhotos}) = Categorie;
//   factory MenuData.menuPhoto(
//       {String id,
//       String category_id,
//       String name,
//       String small_url,
//       String medium_url,
//       String large_url,
//       int sorting}) = MenuPhoto;

//   factory MenuData.fromJson(Map<String, dynamic> json) =>
//       _$MenuDataFromJson(json);
// }

class MenuData {
  String restaurantId;
  String restaurantName;
  List<Categories> categories;

  MenuData({this.restaurantId, this.restaurantName, this.categories});

  MenuData.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurant_id'];
    restaurantName = json['restaurant_name'];
    if (json['categories'] != null) {
      categories = new List<Categories>();
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurant_id'] = this.restaurantId;
    data['restaurant_name'] = this.restaurantName;
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String name;
  int sorting;
  List<MenuPhotos> menuPhotos;
  bool isSelected  = false; 

  Categories({this.name, this.sorting, this.menuPhotos, this.isSelected});

  Categories.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sorting = json['sorting'];
    isSelected = false; 
    if (json['menuPhotos'] != null) {
      menuPhotos = new List<MenuPhotos>();
      json['menuPhotos'].forEach((v) {
        menuPhotos.add(new MenuPhotos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['sorting'] = this.sorting;
    data['isSelected'] = this.isSelected ; 
    if (this.menuPhotos != null) {
      data['menuPhotos'] = this.menuPhotos.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MenuPhotos {
  String id;
  String categoryId;
  String name;
  String smallUrl;
  String mediumUrl;
  String largeUrl;
  int sorting;

  MenuPhotos(
      {this.id,
      this.categoryId,
      this.name,
      this.smallUrl,
      this.mediumUrl,
      this.largeUrl,
      this.sorting});

  MenuPhotos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    name = json['name'];
    smallUrl = json['small_url'];
    mediumUrl = json['medium_url'];
    largeUrl = json['large_url'];
    sorting = json['sorting'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['small_url'] = this.smallUrl;
    data['medium_url'] = this.mediumUrl;
    data['large_url'] = this.largeUrl;
    data['sorting'] = this.sorting;
    return data;
  }
}

