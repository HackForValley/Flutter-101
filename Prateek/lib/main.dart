import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Porto(),
));

class Porto extends StatelessWidget {
  const Porto({Key key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.black54,
          elevation: 0,
          leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
          title: Row(children: <Widget>[
            SizedBox(width: 68,),
            Text('PORTOFOLIO'),
          ],),
          actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mood,
              color: Colors.amber,
              ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.turned_in),
          ),
        ],
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/me.jpg'),
                minRadius: 90,
                maxRadius: 90,
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Divider(
                height: 1,
                color: Colors.grey,
                ),
            ),
            SizedBox(height: 50,),
            Text(
              'NAME',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Text(
              'PRATEEK PANWAR',
              style: TextStyle(
                fontSize: 30,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'BATCH',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Text(
              '2019-2023',
              style: TextStyle(
                fontSize: 30,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'I code in notepad',
              style: TextStyle(
                fontFamily: 'AmaticSC',
                fontSize: 50,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 25,),
            FlatButton(
              onPressed: () {},
              color: Colors.amber,
              child: Text(
                'Press F',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}