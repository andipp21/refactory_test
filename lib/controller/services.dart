import 'dart:convert';
import 'dart:async';
import 'dart:developer';
import 'package:refactory_test/model/course_model.dart';
import 'package:refactory_test/model/detail_course_model.dart';
import 'package:refactory_test/model/news_model.dart';
import 'package:http/http.dart'
as http;
import 'package:refactory_test/model/partner_model.dart';
import 'package:refactory_test/model/review_model.dart';

class Services {

  static Future < List < Partner >> fetchPartner() async {
    final response = await http.get('https://raw.githubusercontent.com/cahyo-refactory/RSP-DataSet-SkilTest-FE/main/partner.json');
    List < Partner > list;

    if (response.statusCode == 200) {
      list = parsePartner(response.body);

      log(list.toString());
    }

    return list;
  }

  static List < Partner > parsePartner(String responseBody) {
    Map jsonMap = json.decode(responseBody);

    final parsed = jsonMap['data'].cast < Map < String, dynamic >> ();
    return parsed.map < Partner > ((json) => Partner.fromJson(json)).toList();
  }

  static Future < List < NewsModel >> fetchNews() async {
    final response = await http.get('https://raw.githubusercontent.com/cahyo-refactory/RSP-DataSet-SkilTest-FE/main/seen_on.json');
    List < NewsModel > list;

    if (response.statusCode == 200) {
      list = parseNews(response.body);

      return list;
    } else {

      list = [];

      return list;
    }
  }

  static List < NewsModel > parseNews(String responseBody) {
    Map jsonMap = json.decode(responseBody);


    final parsed = jsonMap['data'].cast < Map < String, dynamic >> ();
    return parsed.map < NewsModel > ((json) => NewsModel.fromJson(json)).toList();
  }

  static Future < Review > fetchReview() async {
    final response = await http.get('https://raw.githubusercontent.com/cahyo-refactory/RSP-DataSet-SkilTest-FE/main/alumni-report.json');
    Review review;

    if (response.statusCode == 200) {
      var jsonMap = json.decode(response.body);

      review = Review.fromJson(jsonMap);
    }

    return review;
  }

  static Future < DetailCourse > fetchDetailCourse() async {
    final response = await http.get('https://raw.githubusercontent.com/cahyo-refactory/RSP-DataSet-SkilTest-FE/main/detail-course.json');

    DetailCourse dc;

    if (response.statusCode == 200) {
      var jsonMap = json.decode(response.body);

      dc = DetailCourse.fromJson(jsonMap);
    }

    return dc;
  }

  static List < Course > parseCourse(String responseBody) {
    final parsed = json.decode(responseBody).cast < Map < String, dynamic >> ();
    return parsed.map < Course > ((json) => Course.fromJson(json)).toList();
  }
}