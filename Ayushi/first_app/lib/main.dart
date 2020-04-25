import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First App',
        theme: ThemeData(
          primarySwatch: Colors.grey,
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
                color: Colors.black,
                child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 30),
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/58321738?s=400&u=86e51a4514aaa933341ac53a1f52487c54fa509b&v=4"),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(75.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 30.0),
                          ),
                          Text("Ayushi",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.grey)),
                          Container(
                              color: Colors.red, height: 2.0, width: 100.0),
                          SizedBox(height: 0.5),
                          Container(
                              color: Colors.red, height: 2.0, width: 100.0),
                          SizedBox(height: 10.0),
                          Text("CSE 2nd Sem",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                          Container(
                              color: Colors.red, height: 2.0, width: 100.0),
                          SizedBox(height: 0.5),
                          Container(
                              color: Colors.red, height: 2.0, width: 100.0),
                          SizedBox(height: 20.0),
                          Card(
                              color: Colors.grey,
                              elevation: 5.0,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 5.0),
                                  child: Column(children: <Widget>[
                                    Text("My Skills",
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          color: Colors.black,
                                        )),
                                    Container(
                                        color: Colors.red,
                                        height: 2.0,
                                        width: 100.0),
                                    Container(
                                        color: Colors.red,
                                        height: 2.0,
                                        width: 100.0),
                                  ]))),
                          SizedBox(height: 20.0),
                          Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSodlHQU3QEy7dT_bdUGFRqI0TFhl_0eK3t3yaKtw9HkZ_CCFYI&usqp=CAU"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcScvL-IjpiLDAJdGm3PS_vwyI01dI4w3k0VXn4bBpFFGY_crCKZ&usqp=CAU"),
                                        ),
                                      ),
                                    ),
                                  ]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ6qG_0exaiwCTLc8c_J6Cfh49_eeKG_qm2M-M6mBGe77evoG7f&usqp=CAU"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTdglvp2BXtv9BGw5wjrc9iHljBBjy_sfsvf5SsHu3WscP4NIza&usqp=CAU"),
                                        ),
                                      ),
                                    ),
                                  ])
                            ],
                          ),
                        ])))));
  }
}
