import 'package:flutter/material.dart';

class TextWeight extends StatelessWidget {
  String text;
  String label;
  TextWeight({this.label, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$label : $text',
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }
}