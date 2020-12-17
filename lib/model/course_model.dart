import 'package:refactory_test/model/mentor_model.dart';

class Course {
  int id;
  String photoUrl;
  String title;
  String shortDescription;
  String linkUrl;
  Mentor mentor;

  Course(
      {this.id,
      this.photoUrl,
      this.title,
      this.shortDescription,
      this.linkUrl,
      this.mentor});

  Course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photoUrl = json['photo_url'];
    title = json['title'];
    shortDescription = json['short_description'];
    linkUrl = json['link_url'];
    mentor = json['user'] != null ? new Mentor.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['photo_url'] = this.photoUrl;
    data['title'] = this.title;
    data['short_description'] = this.shortDescription;
    data['link_url'] = this.linkUrl;
    if (this.mentor != null) {
      data['user'] = this.mentor.toJson();
    }
    return data;
  }
}