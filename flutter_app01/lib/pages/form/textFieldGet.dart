import 'package:flutter/material.dart';

class TextFieldGetDemoPage extends StatefulWidget {
  @override
  _TextFieldGetDemoPageState createState() => _TextFieldGetDemoPageState();
}

class _TextFieldGetDemoPageState extends State<TextFieldGetDemoPage> {

  var _username = new TextEditingController();
  var _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textField 页面 获取表单内容')
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '请输入用户名',
            ),
            controller: _username,
            onChanged: (value){
              _username.text = value;
            },
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '请输入密码',
            ),
            onChanged: (value){
              _password = value;
            },
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 40,
            child: RaisedButton(
              child: Text('登录'),
              onPressed: (){
                print(_username.text);
                print(_password);
              },
              color: Colors.blue,
              textColor: Colors.white,
            ),
          )
          
        ]
      )
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}