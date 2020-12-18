import 'materi_course_model.dart';

class DetailCourse {
  int id;
  String shortDescription;
  String quistion;
  String answer;
  String quistionPhoto;
  List<MateriCourse> materiCourse;

  DetailCourse(
      {this.id,
      this.shortDescription,
      this.quistion,
      this.answer,
      this.quistionPhoto,
      this.materiCourse});

  DetailCourse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    shortDescription = json['short-description'];
    quistion = json['quistion'];
    answer = json['answer'];
    quistionPhoto = json['quistion-photo'];
    if (json['materi course'] != null) {
      materiCourse = new List<MateriCourse>();
      json['materi course'].forEach((v) {
        materiCourse.add(new MateriCourse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['short-description'] = this.shortDescription;
    data['quistion'] = this.quistion;
    data['answer'] = this.answer;
    data['quistion-photo'] = this.quistionPhoto;
    if (this.materiCourse != null) {
      data['materi course'] = this.materiCourse.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
