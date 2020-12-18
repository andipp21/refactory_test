import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';

class CoursesContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Bagaimana Refactory Course membantu ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w500),
                children: <TextSpan>[
                  TextSpan(
                      text: 'meningkatkan skill',
                      style: TextStyle(color: kSecondaryColor)),
                  TextSpan(text: ' anda.'),
                ],
              ),
            ),
          ),
          Center(
            child: RaisedButton(
                textColor: Colors.white,
                child: Text('Pelajari Lebih'),
                color: kSecondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () => {}),
          ),
          Padding(
              padding: EdgeInsets.only(top: 32),
              child: Image.network(
                  'https://i0.wp.com/refactory.id/wp-content/uploads/2020/07/Frame.png?fit=839%2C481&ssl=1'))
        ],
      ),
    );
  }
}
