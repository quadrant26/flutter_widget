import 'package:flutter/material.dart';

import '../../pages/Tabs.dart';

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

                // 返回根目录
                // new Tabs()
                // new Tabs(index: 3)
                Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(
                    builder: (context) => new Tabs(index: 3)
                  ), 
                  (route) => route == null
                  );
                // Navigator.of(context).pop();
              },
            )
          ],
        ),
      )
    );
  }
}