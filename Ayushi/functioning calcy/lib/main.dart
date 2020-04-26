import 'package:flutter/material.dart';
import 'dart:math';

var rng = new Random();
int sum = 0;
int num4 = rng.nextInt(20);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.indigo,
          brightness: Brightness.dark),
      home: MyHomePage(title: 'Fun with Calculations!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  String output = "Output ";
  String result = "Result :";

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");
  void _add() {
    setState(() {
      num1 = num4;
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void _subtract() {
    setState(() {
      num2 = int.parse(t2.text);
      if (num1 < num2) {
        output = "Error in input";
        sum = 0;
      } else
        sum = num1 - num2;
    });
  }

  void _multiply() {
    setState(() {
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void _divide() {
    setState(() {
      num2 = int.parse(t2.text);
      if (num1 == 0 || num2 == 0) {
        output = "Error in input";
        sum = 0;
      } else
        sum = num1 ~/ num2;
    });
  }

  void _answerCheck() {
    setState(() {
      num3 = int.parse(t1.text);
      if (num1 % 2 != 0) {
        num1 = num1 - 0;
      }

      if (num1 == num3) {
        result = "Congratulations!!!";
      } else {
        result = "OOPS It's incorrect";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: ListView(children: <Widget>[
          Card(
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenHeight * 0.2,
                    vertical: screenWidth * 0.2),
                child: Text("$output : $sum",
                    style: TextStyle(
                        fontSize: screenWidth * 0.08, color: Colors.black)),
              )),
          SizedBox(height: 20.0),
          Container(
            color: Colors.black,
            child: TextField(
                keyboardType: TextInputType.number,
                controller: t2,
                decoration: InputDecoration(
                  hintText: "Input number: ",
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: screenHeight * 0.05,
                      vertical: screenWidth * 0.05),
                )),
          ),
          SizedBox(height: screenHeight * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: _add,
                child: Text("Add",
                    style: TextStyle(
                        color: Colors.grey, fontSize: screenWidth * 0.06)),
                color: Colors.black,
                elevation: 15,
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.02,
                    vertical: screenHeight * 0.02),
              ),
              SizedBox(width: screenHeight * 0.01),
              RaisedButton(
                  onPressed: _subtract,
                  child: Text("Subtract",
                      style: TextStyle(
                          color: Colors.grey, fontSize: screenWidth * 0.06)),
                  color: Colors.black,
                  elevation: 15,
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.02,
                      vertical: screenHeight * 0.02)),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: _multiply,
                child: Text("Multiply",
                    style: TextStyle(
                        color: Colors.grey, fontSize: screenWidth * 0.06)),
                color: Colors.black,
                elevation: 15,
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.02,
                    vertical: screenHeight * 0.02),
              ),
              RaisedButton(
                  onPressed: _divide,
                  child: Text("Divide",
                      style: TextStyle(
                          color: Colors.grey, fontSize: screenWidth * 0.06)),
                  color: Colors.black,
                  elevation: 15,
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.02,
                      vertical: screenHeight * 0.02)),
            ],
          ),
          SizedBox(height: screenHeight * 0.04),
          Text(
            "$result  ",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          SizedBox(height: screenHeight * 0.04),
          Container(
            color: Colors.black,
            child: TextField(
                keyboardType: TextInputType.number,
                controller: t1,
                decoration: InputDecoration(
                  hintText: "Your Guess: ",
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: screenHeight * 0.05,
                      vertical: screenWidth * 0.05),
                )),
          ),
          SizedBox(height: screenHeight * 0.02),
          MaterialButton(
            onPressed: _answerCheck,
            child: Text("Submit"),
            color: Colors.black,
          ),
        ])));
  }
}
