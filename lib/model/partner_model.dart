class Partner {
  int id;
  String photoUrl;
  String name;

  Partner({this.id, this.photoUrl, this.name});

  Partner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photoUrl = json['photo_url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['photo_url'] = this.photoUrl;
    data['name'] = this.name;
    return data;
  }
}
