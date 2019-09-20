import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBarDemoPage'),
        centerTitle: true, // 标题居中显示
        backgroundColor: Colors.red,  // 导航颜色
        // leading: Icon(Icons.menu),   // 导航左侧图标
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            print('menu');
          },
        ),
        // actions // 右侧图标
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, size: 32, color: Colors.white),
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(Icons.settings, size: 32, color: Colors.white),
            onPressed: (){
              
            },
          )
        ],
      ),
      body: Container(
        child: Text('AppBarDemoPage'),
      )
    );
  }
}