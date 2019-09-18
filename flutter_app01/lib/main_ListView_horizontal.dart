import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomePage(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width:180.0,
            color: Colors.blue
          ),
          Container(
            width:180.0,
            color: Colors.yellow
          ),
          Container(
            width:180.0,
            color: Colors.purple
          ),
          Container(
            width:180.0,
            color: Colors.greenAccent
          )
        ],
      )
    );
  }
}
