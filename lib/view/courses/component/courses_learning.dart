import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';

class CoursesLearning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Column(
        children: [
          Text('Ready to start Learning?',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18)),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 32),
                textColor: Colors.white,
                child: Text('Daftar Sekarang'),
                color: kSecondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () => {}),
          ),
        ],
      ),
    );
  }
}
