import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refactory_test/assets/style.dart';
import 'package:refactory_test/model/data_course_model.dart';
import 'package:refactory_test/model/detail_course_model.dart';
import 'package:refactory_test/model/materi_course_model.dart';

class DcContent extends StatelessWidget {
  final DetailCourse dc;

  const DcContent({this.dc});

  @override
  Widget build(BuildContext context) {
    List<MateriCourse> lmc = dc.materiCourse;

    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Tentang Course',
              style: TextStyle(fontSize: 24),
            ),
          ),
          //Tentang Course
          Text(
            dc.shortDescription,
            textAlign: TextAlign.center,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 48.0, bottom: 16),
            child: Text(
              'Materi Course',
              style: TextStyle(fontSize: 24),
            ),
          ),

          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: lmc.length,
              itemBuilder: (BuildContext context, int i) {
                List<DataCourse> ldc = lmc[i].data;

                return Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ListTile(
                        title: Text(
                          lmc[i].section,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          children: [
                            ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: ldc.length,
                                itemBuilder: (BuildContext context, int idx) {
                                  return Container(
                                    color: cWhite,
                                    margin: EdgeInsets.symmetric(vertical: 2),
                                    child: ListTile(
                                      leading: FaIcon(
                                        FontAwesomeIcons.youtube,
                                        size: 20,
                                      ),
                                      title: Text(
                                        '${ldc[i].title} (${ldc[i].timeIn})',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      trailing: RaisedButton(
                                          textColor: Colors.white,
                                          child: Text('Play'),
                                          color: kSecondaryColor,
                                          onPressed: () => {}),
                                    ),
                                  );
                                })
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
