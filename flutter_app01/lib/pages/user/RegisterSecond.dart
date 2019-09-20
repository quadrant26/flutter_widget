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
            Text('这是一个注册页面'),
            RaisedButton(
              child: Text('注册'),
              onPressed: (){

              },
            )
          ],
        ),
      )
    );
  }
}