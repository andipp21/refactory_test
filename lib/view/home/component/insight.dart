import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';

class HomeInsight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              'INSIGHT TERBARU',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'Knowledge Sharing',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 48),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: kPrimaryColor),
                  children: [
                    TextSpan(
                      text: "Lihat Semua ",
                    ),
                    WidgetSpan(
                      child: Icon(Icons.arrow_forward_rounded,
                          size: 18, color: kPrimaryColor),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
