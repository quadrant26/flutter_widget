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
        body: HomePage(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  int countNum = 1;
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100),
          Text('${countNum}'),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('按钮'),
            onPressed: (){
              // setSate() // 在 StatelessWidget 中 无法改变
              this.countNum++;
              print(this.countNum); 
            },
          )
        ],
      )
    );
  }
}