
import 'package:flutter/material.dart';
import 'package:refactory_test/model/news_model.dart';
import 'package:refactory_test/view/home/component/news.dart';

class HomeAsSeenOn extends StatelessWidget {

  HomeAsSeenOn({this.nm});
  final List<NewsModel> nm;

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
                child: Text("As Seen On", style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w700)),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              primary: true,
              shrinkWrap: true,
              itemCount: nm.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return new News(nm[index]);
              },
            ),
          ],
        );
  }
}