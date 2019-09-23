import 'package:flutter/material.dart';

class SwitchDemoPage extends StatefulWidget {
  @override
  _SwitchDemoPageState createState() => _SwitchDemoPageState();
}

class _SwitchDemoPageState extends State<SwitchDemoPage> {
  
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch 页面')
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Switch(
              value: flag,
              onChanged: (val){
                setState(() {
                  flag = val;
                });
              },
            ),
            Text(flag ? '选中': '未选中'),
            SizedBox(height:10),
            SwitchListTile(
              value: this.flag,
              title: Text('标题'),
              onChanged: (val){
                setState(() {
                  flag = val;
                });
              },
              subtitle: Text('子标题'),
              secondary: Image.network('https://pics5.baidu.com/feed/f31fbe096b63f6242522e5a312a390fd1b4ca304.jpeg?token=49bd6a38eeca5c9810a6c67fe689a9ac&s=8E20C00306167DDA4E9D00C30300A0B6'),
            )
          ]
        )
      )
    );
  }
}