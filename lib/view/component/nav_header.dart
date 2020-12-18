import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            title: Text(
              "Home",
              // style: TextStyle(color: kPrimaryColor),
            ),
            trailing: Icon(
              Icons.home,
              // color: kPrimaryColor
            ),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text(
              "Courses",
              // style: TextStyle(color: kPrimaryColor),
            ),
            trailing: FaIcon(FontAwesomeIcons.book),
            onTap: () {
              Navigator.pushNamed(context, '/courses');
            },
          ),
          ListTile(
            title: Text(
              "List Courses",
              // style: TextStyle(color: kPrimaryColor),
            ),
            trailing: FaIcon(FontAwesomeIcons.list),
            onTap: () {
              Navigator.pushNamed(context, '/list');
            },
          ),
          ListTile(
            title: Text(
              "Detail Courses",
              // style: TextStyle(color: kPrimaryColor),
            ),
            trailing: FaIcon(FontAwesomeIcons.tasks),
            onTap: () {
              Navigator.pushNamed(context, '/detail');
            },
          ),
        ],
      ),
    );
  }
}
