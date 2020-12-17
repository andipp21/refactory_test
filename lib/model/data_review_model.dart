import 'package:refactory_test/model/user_model.dart';

class DataReview {
  int id;
  User user;
  int star;
  String title;
  String description;

  DataReview({this.id, this.user, this.star, this.title, this.description});

  DataReview.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    star = json['star'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['star'] = this.star;
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }
}