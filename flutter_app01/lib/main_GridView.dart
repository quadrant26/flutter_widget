import 'package:flutter/material.dart';

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

  List<Widget> _getListData(){
    List<Widget> list = new List();
    for(var i=0; i<20; i++){
      list.add(Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          '这是$i条数据',
          style: TextStyle(color: Colors.white, fontSize:12)
        )
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0, // 水平之间 Widget 的距离
      mainAxisSpacing: 10.0, // 垂直 Widget 的距离
      padding: EdgeInsets.all(10.0),
      crossAxisCount: 3,
      childAspectRatio: 0.7, // 宽度和高度的比例
      children: _getListData(),
    );
  }
}
