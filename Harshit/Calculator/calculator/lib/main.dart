import 'package:flutter/material.dart';
double sum=0;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calci',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor:Colors.yellow,
        brightness: Brightness.dark,
      ),//theme
      home: MyHomePage(title:'Calculator'),
    );//Material app
  }//widget build
}//stateless widget

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double num1=0;
 double num2=0;
  String mess="";
String temp="";

final TextEditingController t1 = new TextEditingController(text:"");
final TextEditingController t2 = new TextEditingController(text:"");
  void _add() {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1+num2;
      temp=sum.toString();
    });
  }
  void _subtract(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      if(num1<num2){
        sum=(-1)*(num2-num1);
        temp=sum.toString();
       }
      else{
      sum=num1-num2;
      sum=sum.toDouble();
      temp=sum.toString();}
    });
  }
  void _multiply(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=num1*num2;
      temp=sum.toString();
    });
  }
  void _divide(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      if(num2==0)
      {
        temp="NaN";
      }
      else{
      sum=num1/num2;
      temp=sum.toString();}
    });
  }
  void _exp(){
    setState((){
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum=1;
      if(num2>=0){
      for(var i=1;i<=num2;i++){
        sum*=num1;
      }}
      else{
        for(var i=num2;i<0;i++){
        sum/=num1;
      }
      }
      temp=sum.toString();
    });
  }
  void _rem(){
    setState((){
      var a;
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      a=(num1/num2);
      sum=num1-a.floor()*num2;
      temp=sum.toString();
    });
  }
void _message(){
    setState(() {
      temp="";
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children:<Widget>[
          Text(widget.title,style:TextStyle(fontSize:25),),
          Text("(Hack For Valley)",style:TextStyle(fontSize:12))
         ],//children
         ),  //Column      
        actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: (){}),
              IconButton(icon: Icon(Icons.person_add), onPressed: (){})
            ],//widget
      ),//appbar
      
      floatingActionButton: FloatingActionButton(
    child: Icon(Icons.refresh),
    onPressed: _message,
   ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

           Card(
             child: Padding(
               padding:EdgeInsets.all(15),
               child: Text(" Get Output Here : $temp",style:TextStyle(fontSize: 30.0,color: Colors.white30,fontWeight: FontWeight.bold ),
              )//Text
             )//Padding
           ),//Card
            SizedBox(height:40.0),
            Padding(padding: EdgeInsets.all(10), child:
            TextField(
              keyboardType: TextInputType.number,
              controller: t1,
              decoration: InputDecoration(
               contentPadding: EdgeInsets.all(15),
               border: OutlineInputBorder(),
               hintText: "                                                                                            Enter first value"
            ),//Decoration
            ),//textfield
            ),//Padding

            Padding(padding: EdgeInsets.all(10), child:
            TextField(
              keyboardType: TextInputType.number,
              controller: t2,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(),    
                hintText: "                                                                                            Enter Second value" 
              ),//Decoration
            ),//textfield
            ),//Padding
            SizedBox(height:40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
              RaisedButton(
                 onPressed: _add,
                 textColor: Colors.grey[900],
                 color:Colors.grey,
                 child:Text('+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold )),
              ),//Raisedbutton
              RaisedButton(
                 onPressed: _subtract,
                 textColor: Colors.grey[900],
                 color:Colors.grey,
                 padding:EdgeInsets.all(0.0),
                 child:Text('-',style: TextStyle(fontSize: 30)),
              ),//Raisedbutton
           ],//children
           ),//row
           SizedBox(height:15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              RaisedButton(
                 onPressed: _multiply,
                textColor: Colors.grey[900],
                 color:Colors.grey,
                 padding:EdgeInsets.all(0.0),
                 child:Text('X',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold )),
              ),//Raisedbutton
              RaisedButton(
                 onPressed: _divide,
                textColor: Colors.grey[900],
                 color:Colors.grey,
                 padding:EdgeInsets.all(0.0),
                 child:Text('/',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold )),
              ),//Raisedbutton
           ],//children
           ), //row
           
             SizedBox(height:15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              RaisedButton(
                 onPressed: _exp,
                textColor: Colors.grey[900],
                 color:Colors.grey,
                 padding:EdgeInsets.all(0.0),
                 child:Text('^',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold )),
              ),//Raisedbutton
              RaisedButton(
                 onPressed: _rem,
                textColor: Colors.grey[900],
                 color:Colors.grey,
                 padding:EdgeInsets.all(0.0),
                 child:Text('%',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold )),
              ),//Raisedbutton
           ],//children
           ), //row
            
            
          ],//children
        ),//column
      ),//center
      
    );//scaffold
  }//Widget Build
}//class _Myhomepage
