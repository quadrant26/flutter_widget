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

  Widget _getListData (){

  }

  @override
  Widget build(BuildContext context) {
    var end;
    return Container(
      width: 300, 
      height: 400,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,  // 横轴之间的距离
        runSpacing: 20, // 纵轴的之间的距离
        alignment: WrapAlignment.end, // 对齐方式
        direction: Axis.vertical,
        children: <Widget>[
          MyButton('第1季'),
          MyButton('第2季'),
          MyButton('第2季'),
          MyButton('第3季'),
          MyButton('第4季'),
          MyButton('第5季'),
          MyButton('第6季'),
          MyButton('第7季'),
        ],
      )
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text, style: TextStyle(color: Colors.blueAccent)),
      textColor: Theme.of(context).accentColor,
      onPressed: (){},
    );
  }
}
