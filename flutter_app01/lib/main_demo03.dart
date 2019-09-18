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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Hello, Flutter重铸饰品的插槽形状时使用，锁定某个插槽，令其形状保持不变。重铸饰品的插槽形状时使用，锁定某个插槽，令其形状保持不变。重铸饰品的插槽形状时使用，锁定某个插槽，令其形状保持不变。',
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.fade, // 溢出的部分会进行一个渐变消失的效果
          maxLines: 1,
          textAlign: TextAlign.right,
          textScaleFactor: 2.0, // 文本字体缩放倍数
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.red,
            fontWeight: FontWeight.w500
          )
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 1.0
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          )
        ),
        margin: EdgeInsets.fromLTRB(10, 30, 5, 0),
        transform: Matrix4.translationValues(100, 0, 0),
        alignment: Alignment.bottomLeft,
      )
      

    );
  }
}
