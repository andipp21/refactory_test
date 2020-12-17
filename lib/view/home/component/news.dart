import 'package:flutter/material.dart';
import 'package:refactory_test/model/news_model.dart';

class News extends StatelessWidget {
  const News(this.newsModel);

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          newsModel.photoUrl,
          width: 125,
          alignment: Alignment.center,
          fit: BoxFit.fill
        ),
      ],
    );
  }
}