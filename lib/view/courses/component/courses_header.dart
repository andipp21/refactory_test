import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';

class CoursesHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Tingkatkan ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'skill pemrograman',
                        style: TextStyle(color: kSecondaryColor)),
                    TextSpan(text: ' kapan pun, dimana pun.'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'We’re a brand of passionate software engineers and educators with an engaging curriculum backed by real-world software projects ready to boost your career.',
                style: TextStyle(color: cWhite),
                textAlign: TextAlign.center,
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    textColor: Colors.white,
                    child: Text('Masuk & Memulai Belajar'),
                    color: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () => {}),
                OutlineButton(
                    textColor: Colors.white,
                    child: Text('Daftar Sekarang'),
                    borderSide: BorderSide(color: kSecondaryColor),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () => {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
