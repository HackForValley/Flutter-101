import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              title: Text("My Portfolio"),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                IconButton(icon: Icon(Icons.person_add), onPressed: () {})
              ],
            ),
            body: Container(
              alignment: Alignment(0.0, 0.0),
              color: Colors.blue.shade100,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        child: Image.network(
                          "https://avatars2.githubusercontent.com/u/58321738?s=400&u=86e51a4514aaa933341ac53a1f52487c54fa509b&v=4",
                          height: 120.0,
                          width: 150.0,
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0)))),
                    Padding(padding: EdgeInsetsDirectional.only(bottom: 50)),
                    Text("Ayushi",
                        style: TextStyle(fontSize: 30, color: Colors.red)),
                    Container(color: Colors.blue, height: 5.0, width: 100.0),
                    SizedBox(height: 10.0),
                    Text("CSE 2nd Sem",
                        style: TextStyle(fontSize: 25, color: Colors.green)),
                    SizedBox(height: 20.0),
                    Text("Fun learning Flutter!!",
                        style: TextStyle(fontSize: 20, color: Colors.orange))
                  ]),
            )));
  }
}
