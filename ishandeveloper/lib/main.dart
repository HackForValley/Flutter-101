import 'package:flutter/material.dart';

import 'views/home.dart';

void main() => runApp(IshansApp());

class IshansApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
