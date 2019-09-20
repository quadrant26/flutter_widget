import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text('这是一个登录页面，点击登录会执行登录操作'),
            RaisedButton(
              child: Text('登录'),
              onPressed: (){
                // 点击登录返回上一页
                Navigator.of(context).pop();
                // Navigator.pop(context);
              },
            )
          ],
        ),
      )
    );
  }
}