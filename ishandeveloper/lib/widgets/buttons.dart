import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {

  final String text;
  final IconData icon;
  final Function onpress;

  CustomButtons({this.icon,this.text,this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      height: 40,
      width: MediaQuery.of(context).size.width*0.75,
      child: MaterialButton(
        
        color: Colors.white,
        onPressed: onpress,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.white),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Icon(icon,color: Colors.deepPurple[900],),
            SizedBox(width: 10,),
            Text(
              text.toUpperCase(),
              style: TextStyle(
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}