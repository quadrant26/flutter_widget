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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三', style: TextStyle(fontSize: 28.0)),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话xxxxxx'),
              ),
              ListTile(
                title: Text('地址xxxxxx'),
              )
            ],
          )
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('李四', style: TextStyle(fontSize: 28.0)),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话xxxxxx'),
              ),
              ListTile(
                title: Text('地址xxxxxx'),
              )
            ],
          )
        )
      ],
    );
  }
}
