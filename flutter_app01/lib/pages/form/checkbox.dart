import 'package:flutter/material.dart';

class CheckboxDemoPage extends StatefulWidget {
  CheckboxDemoPage({Key key}) : super(key: key);

  _CheckboxDemoPageState createState() => _CheckboxDemoPageState();
}

class _CheckboxDemoPageState extends State<CheckboxDemoPage> {

  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox页面 页面')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: flag,
                onChanged: (value){
                  setState(() {
                   flag = value; 
                  });
                },
                activeColor: Colors.pink,  // 选中的状态背景颜色
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(flag ? '选择' : '未选中')
            ],
          ),
          SizedBox(height: 10),
          CheckboxListTile(
            value: this.flag,
            onChanged: (value){
              setState(() {
                flag = value; 
              });
            },
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
          ),
          SizedBox(height: 10),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            onChanged: (value){
              setState(() {
                flag = value; 
              });
            },
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
            secondary: Icon(Icons.help),
          ),
          Divider(),
        ]
      )
    );
  }
}