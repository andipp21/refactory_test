import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refactory_test/assets/style.dart';
import 'package:refactory_test/controller/services.dart';
import 'package:refactory_test/model/review_model.dart';
import 'package:refactory_test/view/component/footer.dart';
import 'package:refactory_test/view/component/nav_header.dart';
import 'package:refactory_test/view/courses/component/courses_articles.dart';
import 'package:refactory_test/view/courses/component/courses_content.dart';
import 'package:refactory_test/view/courses/component/courses_header.dart';
import 'package:refactory_test/view/courses/component/courses_langkah.dart';
import 'package:refactory_test/view/courses/component/courses_learning.dart';
import 'package:refactory_test/view/courses/component/courses_review.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appHeader(),
        drawer: Drawer(
          child: NavHeader(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: FaIcon(FontAwesomeIcons.whatsapp),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Container(
            child: FutureBuilder<Review>(
                future: Services.fetchReview(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                      children: [
                        CoursesHeader(),
                        CoursesContent(),
                        CoursesArticle(),
                        CoursesReview(
                          cr: snapshot.data.data,
                        ),
                        CoursesLearning(),
                        CoursesLangkah(),
                        Footer()
                      ],
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ));
  }

  AppBar appHeader() {
    return AppBar(
      elevation: 0,
      title: Image.network(
          'https://refactory.id/wp-content/uploads/2020/01/refactory-hd-125x52.png',
          fit: BoxFit.cover),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
    );
  }
}
