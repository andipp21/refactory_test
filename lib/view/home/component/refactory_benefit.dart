import 'package:flutter/material.dart';

class HomeBenefit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                  child: Text(
                    'Apa yang Refactory Dapat Bantu?',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center, ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network('https://i1.wp.com/refactory.id/wp-content/uploads/2020/01/material_approval.png?fit=50%2C48&ssl=1'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Memperkuat Tim ',
                              style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(text: 'Engineer', style: TextStyle(fontStyle: FontStyle.italic)),
                                TextSpan(text: ' Anda')
                              ]
                            )
                          ),
                      ),
                      Text(
                        'Bisnis di jaman modern membutuhkan keterampilan pengembangan terbaik untuk meningkatkan skala produk. Kami dapat mempersiapkan course dan juga dapat menyediakan tim yang menangani kebutuhan digital Anda.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300), )
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network('https://i2.wp.com/refactory.id/wp-content/uploads/2020/01/material_bolt.png?fit=28%2C48&ssl=1'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Mewujudkan ',
                              style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(text: 'Software', style: TextStyle(fontStyle: FontStyle.italic)),
                                TextSpan(text: ' Impian Anda')
                              ]
                            )
                          ),
                      ),
                      Text(
                        'Kami adalah perusahaan One-Stop IT Solution untuk proyek Anda, membantu di setiap tahap mulai dari menyusun ide, melalui desain dan pengembangan aplikasi seluler, situs web dan aplikasi desktop, hingga peluncuran produk.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300), )
                    ],
                  ),
              )
            ],
          ),
      ),
    );
  }
}