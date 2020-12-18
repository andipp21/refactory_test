class Mentor {
  int userId;
  String photoUrl;
  String name;

  Mentor({this.userId, this.photoUrl, this.name});

  Mentor.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    photoUrl = json['photo_url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['photo_url'] = this.photoUrl;
    data['name'] = this.name;
    return data;
  }
}
