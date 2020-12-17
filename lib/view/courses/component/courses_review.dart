import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refactory_test/model/data_review_model.dart';

class CoursesReview extends StatelessWidget {
  CoursesReview({
    this.cr
  });

  final List < DataReview > cr;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cr.length,
              itemBuilder: (BuildContext context, int i) {
                return Card(
                  elevation: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image.network(cr[i].user.photoUrl),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                                child: Text(cr[i].user.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300), ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                                child: Text(cr[i].user.from, style: TextStyle(fontWeight: FontWeight.w300), ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                                child: RatingBarIndicator(
                                  itemCount: 5,
                                  rating: cr[i].star.toDouble(),
                                  itemSize: 32.0,
                                  unratedColor: Colors.amber.withAlpha(50),
                                  direction: Axis.horizontal,
                                  itemBuilder: (BuildContext context, int index) {
                                    return FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.amber,
                                    );
                                  },
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  cr[i].title,
                                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  cr[i].description,
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                            ),
                          ],
                        ),
                    ),
                  ),
                );
              }
            )
          ],
        ),
    );
  }
}