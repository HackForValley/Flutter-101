import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tanishq's App",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text("Tanishq's App"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(
              icon: Icon(Icons.person_add),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('images/offic.jpg'),
            ),
          ],
        )),
      ),
    );
  }
}
