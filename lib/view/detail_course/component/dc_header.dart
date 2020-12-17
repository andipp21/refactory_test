import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';

class DcHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text('HTML & CSS Introduction', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32, color: Colors.white), textAlign: TextAlign.center,),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(text: 'HTMl', style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(text: ' & '),
                TextSpan(text: 'HTMl', style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(text: ' adalah materi dasar untuk pengembangan web. Setiap web developer harus memiliki pengetahuan dasar setidaknya HTML dan CSS.'),
              ]
            )
            ),
            Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: RaisedButton(
              textColor: Colors.white,
              child: Text('Mulai Belajar'),
              color: kSecondaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              onPressed: () => {

              }
            ),
          ),
        ],
      ),
      
    );
  }
}