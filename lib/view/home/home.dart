import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';
import 'package:refactory_test/controller/services.dart';
import 'package:refactory_test/model/news_model.dart';
import 'package:refactory_test/model/partner_model.dart';
import 'package:refactory_test/view/component/footer.dart';
import 'package:refactory_test/view/component/nav_header.dart';
import 'package:refactory_test/view/home/component/as_seen.dart';
import 'package:refactory_test/view/home/component/header.dart';
import 'package:refactory_test/view/home/component/insight.dart';
import 'package:refactory_test/view/home/component/refactory_benefit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State < Home > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      drawer: Drawer(
        child: NavHeader(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: FaIcon(FontAwesomeIcons.whatsapp),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Container(
          child: FutureBuilder < List < NewsModel > > (
            future: Services.fetchNews(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return FutureBuilder < List < Partner >> (
                  future: Services.fetchPartner(),
                  builder: (context, ss) {
                    if (ss.hasData) {
                      return ListView(
                        children: [
                          HomeHeader(dataPartner: ss.data,),
                          HomeBenefit(),
                          Divider(thickness: 2),
                          HomeInsight(),
                          HomeAsSeenOn(nm: snapshot.data),
                          Footer()
                        ],
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator()
                      );
                    }
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator()
                );
              }
            })

        )

      )
    );
  }

  AppBar appHeader() {
    return AppBar(
      elevation: 0,
      title: Image.network('https://refactory.id/wp-content/uploads/2020/01/refactory-hd-125x52.png', fit: BoxFit.cover),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
    );
  }
}