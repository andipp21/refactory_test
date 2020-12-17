import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:refactory_test/assets/style.dart';
import 'package:refactory_test/controller/services.dart';
import 'package:refactory_test/model/course_model.dart';
import 'package:refactory_test/view/component/footer_dua.dart';
import 'package:refactory_test/view/component/nav_header.dart';
import 'package:refactory_test/view/list_course/components/course_card.dart';
import 'package:refactory_test/view/list_course/components/course_header.dart';

class ListCourse extends StatefulWidget {
  @override
  _ListCourseState createState() => _ListCourseState();
}

class _ListCourseState extends State < ListCourse > {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      drawer: Drawer(
        child: NavHeader(),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
            .loadString('lib/assets/data_json/course.json'),
            builder: (context, snapshot) {
              List < Course > lCourse = Services.parseCourse(snapshot.data.toString());
              if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      CourseHeader(),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: lCourse.length,
                          itemBuilder: (BuildContext context, int i) {
                            return CourseCard(data: lCourse[i]);
                          }
                      ),
                      FooterDua()
                    ],
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
        )
      ),
    );
  }

  AppBar appHeader() {
    return AppBar(
      elevation: 0,
      title: Image.network('https://refactory.id/wp-content/uploads/2020/01/refactory-hd-125x52.png', fit: BoxFit.cover),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
    );
  }
}