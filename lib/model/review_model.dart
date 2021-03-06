import 'package:refactory_test/model/data_review_model.dart';

class Review {
  List<DataReview> data;

  Review({this.data});

  Review.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<DataReview>();
      json['data'].forEach((v) {
        data.add(new DataReview.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
