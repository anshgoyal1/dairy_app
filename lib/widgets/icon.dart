import 'package:flutter/material.dart';
import '../pages/welcome_page.dart';

class IconGadget extends StatelessWidget {
  String iconImageName;
  String iconName;
  Function onPress;

  IconGadget({this.iconImageName, this.iconName, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Card(
        color: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 10.0,
        child: Column(
          children: [
            IconButton(
                iconSize: 130.0,
                icon: Image.asset(iconImageName),
                onPressed: onPress),
            Text(
              iconName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
