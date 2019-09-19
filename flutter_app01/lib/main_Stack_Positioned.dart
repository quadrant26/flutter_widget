import 'package:flutter/material.dart';
import 'res/listData.dart';

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
        body: LayoutDemo(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: 10,
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
            Positioned(
              left:0,
              bottom:0,
              child: Icon(Icons.search, size: 30, color: Colors.greenAccent),
            ),
            Positioned(
              right:0,
              bottom:0,
              child: Icon(Icons.settings, size: 60, color: Colors.blue),
            ),
          ],
        )
      )
    );
  }
}
