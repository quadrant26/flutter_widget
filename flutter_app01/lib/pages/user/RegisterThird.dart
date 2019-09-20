import 'package:flutter/material.dart';

class RegisterThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册第三步')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text('点击确定完成注册'),
            RaisedButton(
              child: Text('确定'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      )
    );
  }
}