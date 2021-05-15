import 'package:design_airbnb/utils/constants.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AirBnb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TEXT_THEME
      ),
      home: HomeScreen(),
    );
  }
}