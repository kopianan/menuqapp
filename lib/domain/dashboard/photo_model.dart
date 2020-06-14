class PhotoModel {
  String photoMid;
  String photoBig;
  bool selected;

  PhotoModel({this.photoMid, this.photoBig, this.selected});

  PhotoModel.fromJson(Map<String, dynamic> json) {
    photoMid = json['photo_mid'];
    photoBig = json['photo_big'];
    selected = json['selected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['photo_mid'] = this.photoMid;
    data['photo_big'] = this.photoBig;
    data['selected'] = this.selected;
    return data;
  }
}
