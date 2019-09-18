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

  List<Widget> _getData(){
    return [
      ListTile(
        title: Text('我是一个标题')
      ),
      ListTile(
        title: Text('我是一个标题')
      ),
      ListTile(
        title: Text('我是一个标题')
      ),
    ];
  }

  List<Widget> _getData2(){
    List<Widget> list = new List();
    for(var i=0; i<20; i++){
      list.add(ListTile(
        title: Text("我是$i个列表")
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData2()
    );
  }
}
