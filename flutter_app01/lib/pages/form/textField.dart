import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textField 页面')
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                TextField(),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: '请输入搜索内容', // 类似于 placeholder
                    border: OutlineInputBorder(), // 边框设置
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  maxLines: 2, // 多行文本框
                  decoration: InputDecoration(
                    hintText: '多行文本框', // 类似于 placeholder
                    border: OutlineInputBorder(), // 边框设置
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true, // 变成密码框
                  decoration: InputDecoration(
                    hintText: '密码框', // 类似于 placeholder
                    border: OutlineInputBorder(), // 边框设置
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: '用户名', // 类似于 placeholder
                    border: OutlineInputBorder(), // 边框设置
                    labelText: '用户名'
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true, // 变成密码框
                  decoration: InputDecoration(
                    hintText: '密码', // 类似于 placeholder
                    border: OutlineInputBorder(), // 边框设置
                    labelText: '密码',
                    labelStyle: TextStyle()
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true, // 变成密码框
                  decoration: InputDecoration(
                    icon: Icon(Icons.people),
                    hintText: '请输入用户名'
                  ),
                )
              ],
            )
          )
        ],
      )
    );
  }
}