import 'package:dairy_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DairyApp());
}

class DairyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: 
        ThemeData(accentColor: Colors.amberAccent[100],
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity
        ),

        home: WelcomePage(),
    );
  }
}