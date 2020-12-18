import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';

class FooterDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: kPrimaryColor,
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text('Refatory 2020',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500)),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Term of Services',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Privacy Policy',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            )
          ],
        ));
  }
}
