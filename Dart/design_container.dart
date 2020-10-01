import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: ContainerApp(),
  debugShowCheckedModeBanner: false,
));

class ContainerApp extends StatefulWidget {
  @override
  _ContainerAppState createState() => _ContainerAppState();
}

class _ContainerAppState extends State<ContainerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[700],
      alignment: FractionalOffset.center,
      child: ListView(
        children: <Widget>[
          LittleApp(),
          Question(),
          Answer()
        ],
      ),
    );
  }
}

class LittleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 50.0),
      child: Image.asset("asset/flight_0.jpg"),
      constraints:BoxConstraints(
        maxHeight: 250.0,
        minHeight: 50.0,
        maxWidth: 250.0,
        minWidth: 50.0
      ),
      decoration: BoxDecoration(
        //color: Colors.blueAccent,
        boxShadow: [BoxShadow(
          color: Colors.blueGrey[800],
          spreadRadius: 20.0,
          blurRadius: 20.0,
        )]
      ),
    );
  }
}

class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Text("Is it a plane ? ",style:TextStyle(fontSize:25.0,color:Colors.white),textAlign: TextAlign.center,),
        constraints:BoxConstraints(
        maxHeight: 50.0,
        minHeight: 50.0,
        maxWidth: 50.0,
        minWidth: 50.0
      ),
      decoration: BoxDecoration(
        //color: Colors.blueAccent,
        boxShadow: [BoxShadow(
          color: Colors.blueGrey[800],
          spreadRadius: 20.0,
          blurRadius: 20.0,
        )]
      ),
    );
  }
}

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Yes(),
          No(),
        ],
      ),
    );
  }
}

class Yes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Yes",style: TextStyle(color: Colors.white,fontSize: 20.0))),
      margin: EdgeInsets.only(left: 10.0),
      constraints:BoxConstraints(
        maxHeight: 50.0,
        minHeight: 50.0,
        maxWidth: 100.0,
        minWidth: 50.0
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.white
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0),)
      ),
    );
  }
}

class No extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("No",style: TextStyle(color: Colors.white,fontSize: 20.0))),
      margin: EdgeInsets.only(left: 100.0),
      constraints:BoxConstraints(
        maxHeight: 50.0,
        minHeight: 50.0,
        maxWidth: 100.0,
        minWidth: 50.0
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.white
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0),)
      ),
    );
  }
}
