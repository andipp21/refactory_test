import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';

class CoursesLangkah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'LANGKAH MUDAH',
            style: TextStyle(color: kSecondaryColor, fontSize: 14),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Column(
              children: [
                Text(
                  'Memulai Belajar di',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'Refactory Course',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.network(
                'https://i0.wp.com/refactory.id/wp-content/uploads/2020/07/Frame-3-1.png?fit=1024%2C199&ssl=1'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: RaisedButton(
                textColor: Colors.white,
                child: Text('Pelajari Lebih'),
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
