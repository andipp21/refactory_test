import 'package:refactory_test/model/data_course_model.dart';

class MateriCourse {
  int id;
  String section;
  List<DataCourse> data;

  MateriCourse({this.id, this.section, this.data});

  MateriCourse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    section = json['section'];
    if (json['data'] != null) {
      data = new List<DataCourse>();
      json['data'].forEach((v) {
        data.add(new DataCourse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['section'] = this.section;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}