import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';
import 'package:refactory_test/controller/services.dart';
import 'package:refactory_test/view/component/footer_dua.dart';
import 'package:refactory_test/view/component/nav_header.dart';
import 'package:refactory_test/view/detail_course/component/dc_articel.dart';
import 'package:refactory_test/view/detail_course/component/dc_content.dart';
import 'package:refactory_test/view/detail_course/component/dc_header.dart';

class DetailCourse extends StatefulWidget {
  @override
  _DetailCourseState createState() => _DetailCourseState();
}

class _DetailCourseState extends State < DetailCourse > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      drawer: Drawer(
        child: NavHeader(),
      ),
      body: SafeArea(
        child: Container(
          child: FutureBuilder(
            future: Services.fetchDetailCourse(),
            builder: (context, snapshot) {
              final dc = snapshot.data;
              if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      DcHeader(),
                      DcContent(dc: dc),
                      DcArticle(),
                      FooterDua()
                    ],
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
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