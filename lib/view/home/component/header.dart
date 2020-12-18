import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';
import 'package:refactory_test/model/partner_model.dart';

class HomeHeader extends StatefulWidget {
  final List<Partner> dataPartner;

  HomeHeader({this.dataPartner});

  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  int cIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Empowering ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'People',
                        style: TextStyle(color: kSecondaryColor)),
                    TextSpan(text: ' Through Programming'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                          'Refactory adalah perusahaan edukasi dan teknologi yang menyediakan layanan lengkap berupa ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      children: [
                        TextSpan(
                            text: 'course',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(text: ' maupun '),
                        TextSpan(
                            text: 'custom training',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(
                            text:
                                ' yang materinya dapat disesuaikan dengan kebutuhan teknologi dan bisnis perusahaan Anda.'),
                      ])),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                RaisedButton(
                    textColor: Colors.white,
                    child: Text('Temukan Solusi Anda'),
                    color: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () => {}),
                OutlineButton(
                    textColor: Colors.white,
                    child: Text('Tingkatkan Skill Anda'),
                    borderSide: BorderSide(color: kSecondaryColor),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () => {}),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.0),
              child: Column(
                children: [
                  Text(
                    'PARTNER EKSLUSIF KAMI',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  CarouselSlider(
                      items: widget.dataPartner.map((data) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  data.photoUrl,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    data.name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ));
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        pauseAutoPlayOnTouch: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            cIndex = index;
                          });
                        },
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
