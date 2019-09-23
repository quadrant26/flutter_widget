import 'package:flutter/material.dart';

class RadioDemoPage extends StatefulWidget {
  @override
  _RadioDemoPageState createState() => _RadioDemoPageState();
}

class _RadioDemoPageState extends State<RadioDemoPage> {

  int _sex = 2;
  int _title = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo 页面')
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  onChanged: (v){
                    setState(() {
                      this._sex = v;
                    });
                  },
                  groupValue: _sex,
                ),
                SizedBox(width:10),
                Text('女'),
                Radio(
                  value: 2,
                  onChanged: (v){
                    setState(() {
                      this._sex = v;
                    });
                  },
                  groupValue: _sex,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text('${this._sex}'),
                Text(this._sex=='1' ? '男' : '女')
              ],
            ),
            SizedBox(height:20),
            Column(
              children: <Widget>[
                RadioListTile(
                  value: 1,
                  onChanged: (v){
                    setState(() {
                      this._title = v;
                    });
                  },
                  groupValue: this._title,
                  title: Text('标题'),
                  subtitle: Text('二级标题'),
                  secondary: Icon(Icons.mail),
                  selected: this._title==1,
                ),
                Divider(),
                RadioListTile(
                  value: 2,
                  onChanged: (v){
                    setState(() {
                      this._title = v;
                    });
                  },
                  groupValue: this._title,
                  title: Text('标题'),
                  subtitle: Text('二级标题'),
                  secondary: Image.network('https://pics6.baidu.com/feed/d043ad4bd11373f0c301e9afdbd130fefbed0423.jpeg?token=463258ab171172a7674c727fb8ffd302&s=B3A596AE56E2FAEC120925A60300D02A'),
                  selected: this._title==2,
                ),
                Divider(),
              ],
            )
          ]
        )
      )
    );
  }
}