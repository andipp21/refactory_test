import 'package:flutter/material.dart';
import 'package:refactory_test/assets/style.dart';
import 'package:search_widget/search_widget.dart';

class CourseHeader extends StatefulWidget {
  @override
  _CourseHeaderState createState() => _CourseHeaderState();
}

class _CourseHeaderState extends State<CourseHeader> {
  List<String> spinnerString = ['All', 'HTML & CSS', 'FLUTTER', 'NODE.JS'];

  String dropdownValue = 'All';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Row(
            children: [
              Text('Category : '),
              DropdownButton(
                  value: dropdownValue,
                  elevation: 16,
                  style: TextStyle(color: kSecondaryColor),
                  onChanged: (String str) {
                    setState(() {
                      dropdownValue = str;
                    });
                  },
                  items: spinnerString
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList()),
            ],
          ),
          SearchWidget<String>(
            dataList: spinnerString,
            hideSearchBoxWhenItemSelected: false,
            listContainerHeight: MediaQuery.of(context).size.height / 4,
            queryBuilder: (String query, List<String> list) {
              return list
                  .where((String item) =>
                      item.toLowerCase().contains(query.toLowerCase()))
                  .toList();
            },
            popupListItemBuilder: (String item) {
              return null;
            },
            selectedItemBuilder:
                (String selectedItem, VoidCallback deleteSelectedItem) {
              return null;
            },
          ),
        ],
      ),
    );
  }
}
