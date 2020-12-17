import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';
import 'package:refactory_test/model/course_model.dart';

class CourseCard extends StatelessWidget {
  final Course data;
  
  CourseCard({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.network(data.photoUrl),
              Padding(
                padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(data.title, style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 24), ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                          child: Text(data.shortDescription, style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w300, fontSize: 16)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 48.0),
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(data.mentor.photoUrl)
                                  )
                                ),
                              ),
                              // BoxDeoration(child: Image.network(data.mentor.photoUrl)),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(data.mentor.name, style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w300, fontSize: 16)),
                              ),
                            ],
                          ),
                      )
                    ],
                  ),
              )
            ],
          ),
        ),
    );
  }
}