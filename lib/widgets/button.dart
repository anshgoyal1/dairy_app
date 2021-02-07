import 'package:flutter/material.dart';


class Buttons extends StatelessWidget {
  String label;
  Function onPress;
  Color color;
  Buttons({this.color, this.label, this.onPress});
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(width: 350.0, height: 60.0),
      margin: EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          onPressed: onPress,
          color: color,
          child: Text(
            label,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
