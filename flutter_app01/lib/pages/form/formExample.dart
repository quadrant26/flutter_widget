import 'package:flutter/material.dart';

class FormExamplePage extends StatefulWidget {
  @override
  _FormExamplePageState createState() => _FormExamplePageState();
}

class _FormExamplePageState extends State<FormExamplePage> {
  int _sex = 1;
  String _username;
  String _info;
  List hobby = [
    {
      "checkded": true,
      "title": "音乐"
    },
    {
      "checkded": true,
      "title": "跑步"
    },
    {
      "checkded": true,
      "title": "游泳"
    }
  ];

  List<Widget> _getHobby (){

    List<Widget> tempList = [];
    for(var i = 0; i < hobby.length; i++){
      tempList.add(
        Row(
          children: <Widget>[
            Text(this.hobby[i]['title'] + ":"),
            Checkbox(
              value: this.hobby[i]['checkded'],
              onChanged: (value){
                setState(() {
                  this.hobby[i]['checkded'] = value;
                });
              },
            )
          ],
        )
        
      );
    }

    return tempList;
  }

  void _setSexChange (v){
    setState(() {
      this._sex = v; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登记系统')
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: '请输入用户信息'
            ),
            onChanged: (v){
              setState(() {
                this._username = v; 
              });
            },
          ),
          Row(
            children: <Widget>[
              Text('男'),
              Radio(
                value: 1,
                onChanged: _setSexChange,
                groupValue: _sex,
              ),
              SizedBox(width: 10,),
              Text('女'),
              Radio(
                value: 2,
                onChanged: _setSexChange,
                groupValue: _sex,
              )
            ],
          ),
          // 爱好
          Wrap(
            children: _getHobby(),
          ),
          TextField(
            maxLines: 3,
            decoration: InputDecoration(
              hintText: '用户描述',
              border: OutlineInputBorder()
            ),
            onChanged: (v){
              setState(() {
                this._info = v; 
              });
            },
          ),
          SizedBox(height: 40),
          Container(
            width: double.infinity,
            height:40,
            child: RaisedButton(
              child: Text('提交信息'),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: (){
                print(this._username);
                print(this._sex);
                print(this.hobby);
                print(this._info);
              },
            ),
          )
        ],
      )
    );
  }
}