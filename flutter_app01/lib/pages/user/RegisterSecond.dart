import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册第二步')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text('点击下一步'),
            RaisedButton(
              child: Text('下一步'),
              onPressed: (){
                // 替换路由
                Navigator.of(context).pushReplacementNamed('/registerThird');
              },
            )
          ],
        ),
      )
    );
  }
}