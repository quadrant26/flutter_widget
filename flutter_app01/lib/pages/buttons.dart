import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.access_alarm, size: 32, color: Colors.white)
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: Icon(Icons.add, color: Colors.black, size: 36),
        onPressed: (){
          print("浮动按钮");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: (){
                  print('普通按钮');
                },
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text('有颜色按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print('颜色按钮');
                },
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text('有阴影按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10.0,
                onPressed: (){
                  print('阴影按钮');
                },
              )
            ],
          ),
          SizedBox(height:5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200.0,
                height: 50,
                child: RaisedButton(
                  child: Text('宽度高度按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){
                    print('宽度高度按钮');
                  },
                ),
              ),
              RaisedButton.icon(
                icon: Icon(Icons.settings),
                label: Text('图标按钮'),
                onPressed: (){
                  
                },
              )
            ],
          ),
          SizedBox(height:5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    child: Text('自适应按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20.0,
                    onPressed: (){
                      print('自适应按钮');
                    },
                  )
                )
              )
            ],
          ),
          SizedBox(height:5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('圆角按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                onPressed: (){
                  print('圆角按钮');
                },
              ),
              Container(
                width: 60,
                height: 60,
                child: RaisedButton(
                  child: Text('圆形按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20.0,
                  splashColor: Colors.red,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.white
                    )
                  ),
                  onPressed: (){
                    print('圆形按钮');
                  },
                ),
              )
            ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('按钮'),
                onPressed: (){
                  print("扁平化按钮");
                },
              ),
              SizedBox(width: 5,),
              FlatButton(
                child: Text('按钮'),
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: (){
                  print("扁平化按钮");
                },
              ),
              SizedBox(width: 5,),
              OutlineButton(
                child: Text('线框按钮'),
                color: Colors.red, // 没有效果
                textColor: Colors.black54,
                onPressed: (){

                },
              )
            ],
          ),
          SizedBox(height:5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('登录'),
                    color: Colors.black, // 没有效果
                    textColor: Colors.white,
                    onPressed: (){
                      print('登录按钮');
                    },
                  ),
                  RaisedButton(
                    child: Text('注册'),
                    color: Colors.black, // 没有效果
                    textColor: Colors.white,
                    onPressed: (){
                      print('注册按钮');
                    },
                  ),
                  MyButton(text: '自定义按钮', width: 120.0, pressed: (){
                    print('自定义按钮');
                  },)
                ],
              )
            ]
          ),
        ],
      )
    );
  }
}

// 自定义按钮组件
class MyButton extends StatelessWidget {

  final text;
  final pressed;
  final width;
  final height;
  MyButton({this.text='', this.pressed=null, this.width=80.0, this.height=30.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: pressed,
      )
    );
  }
}