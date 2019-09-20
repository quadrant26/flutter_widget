import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册第一步')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text('这是一个注册页面，点击注册跳转到第二步'),
            RaisedButton(
              child: Text('下一步'),
              onPressed: (){
                Navigator.pushNamed(context, '/registerSecond');
                // 替换路由
                // Navigator.of(context).pushReplacementNamed('/registerSecond');
              },
            )
          ],
        ),
      )
    );
  }
}