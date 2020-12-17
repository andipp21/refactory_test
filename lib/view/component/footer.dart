import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refactory_test/assets/style.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cBackground,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Site Map
              Padding(
                padding: const EdgeInsets.only(top: 16),
                  child: Text('Site Map', style: TextStyle(color: cWhite, fontWeight: FontWeight.w600), ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Text('Home', style: TextStyle(color: cWhite)),
                      Text('Bootcamp', style: TextStyle(color: cWhite)),
                      Text('Software Development', style: TextStyle(color: cWhite)),
                      Text('Courses', style: TextStyle(color: cWhite)),
                      Text('Custom Training', style: TextStyle(color: cWhite)),
                      Text('Blog', style: TextStyle(color: cWhite)),
                    ],
                  ),
              ),


              // Company
              Padding(
                padding: const EdgeInsets.only(top: 16),
                  child: Text('Company', style: TextStyle(color: cWhite, fontWeight: FontWeight.w600), ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Text('About Us', style: TextStyle(color: cWhite)),
                      Text('Career', style: TextStyle(color: cWhite)),
                      Text('Press Kit', style: TextStyle(color: cWhite)),
                      Text('FAQ', style: TextStyle(color: cWhite)),
                    ],
                  ),
              ),


              // Connect
              Padding(
                padding: const EdgeInsets.only(top: 16),
                  child: Text('Connect', style: TextStyle(color: cWhite, fontWeight: FontWeight.w600), ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Text('Facebook', style: TextStyle(color: cWhite)),
                      Text('Instagram', style: TextStyle(color: cWhite)),
                      Text('Youtube', style: TextStyle(color: cWhite)),
                      Text('LinkedIn', style: TextStyle(color: cWhite)),
                    ],
                  ),
              ),

              // Icon 4
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FaIcon(FontAwesomeIcons.linkedin, color: cWhite,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FaIcon(FontAwesomeIcons.facebook, color: cWhite),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FaIcon(FontAwesomeIcons.youtube, color: cWhite),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FaIcon(FontAwesomeIcons.instagram, color: cWhite),
                      )
                    ],
                  ),
              ),

              // Address
              Padding(
                padding: const EdgeInsets.only(top: 16),
                  child: Text('Company Address', style: TextStyle(color: cWhite, fontWeight: FontWeight.w600), ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Text(
                        'Jln. Palagan Tentara Pelajar Km 9,8 Ngaglik, Kab Sleman, DI Yogyakarta 55581', 
                        style: TextStyle(color: cWhite)),
                    ],
                  ),
              ),

              //Contact
              // Address
              Padding(
                padding: const EdgeInsets.only(top: 16),
                  child: Text('Contact', style: TextStyle(color: cWhite, fontWeight: FontWeight.w600), ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Text('marketing@refactory.id', style: TextStyle(color: cWhite)),
                      Text('+62 8122 8203 381', style: TextStyle(color: cWhite)),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          children: [
                            Text('Dewita: 0857 2582 7222', style: TextStyle(color: cWhite)),
                            Text('Septin: 0878 2080 0206', style: TextStyle(color: cWhite)),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),

            ],
          ),
      ),
    );
  }
}