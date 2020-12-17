import 'package:flutter/material.dart';

class DcArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      child: Column(
        children: [
          Image.network('https://cdn.fs.teachablecdn.com/KeagvIv6QC6TQCzyKzrL'),
          Text('Alasan Mempelajari HTML dan CSS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Setiap web developer harus memiliki pengetahuan dasar setidaknya HTML dan CSS, dari mempelajari HTML dan CSS dalam course ini harapannya peserta akan lebih paham bagaimana konsep dasar pengembangan website.',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}