import 'package:dairy_app/pages/buffalo_details.dart';
import 'package:dairy_app/pages/cow_details.dart';
import 'package:dairy_app/pages/list_page_buffalo.dart';
import 'package:dairy_app/pages/list_page_cow.dart';
import 'package:flutter/material.dart';

import 'package:dairy_app/widgets/icon.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Text(
            'Tabele ka hisab',
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                IconGadget(
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListPageCow(data: null,)));
                  },
                  iconImageName: 'assets/note.png',
                  iconName: 'Cow \nList',
                ),
                SizedBox(
                  width: 30.0,
                ),
                IconGadget(
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListPageBuffalo(data: null,)));
                  },
                  iconImageName: 'assets/note.png',
                  iconName: 'Buffalo \nList',
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            IconGadget(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CowDetails()));
              },
              iconImageName: 'assets/cow.png',
              iconName: 'Cow',
            ),
            SizedBox(
              height: 20.0,
            ),
            IconGadget(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BuffaloDetails()));
              },
              iconImageName: 'assets/buffalo.png',
              iconName: 'Buffalo',
            ),
          ],
        ));
  }
}
