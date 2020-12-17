class User {
  int userId;
  String photoUrl;
  String name;
  String from;

  User({this.userId, this.photoUrl, this.name, this.from});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    photoUrl = json['photo_url'];
    name = json['name'];
    from = json['from'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['photo_url'] = this.photoUrl;
    data['name'] = this.name;
    data['from'] = this.from;
    return data;
  }
}