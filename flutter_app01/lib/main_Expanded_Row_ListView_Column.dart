import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: LayoutDemo(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height:200,
                color: Colors.black,
                child: Text('Hello, Flutter', style: TextStyle(color: Colors.white))
              )
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex:2,
              child: Container(
                height:200,
                child: Image.network('http://pic40.nipic.com/20140412/11412826_124950636000_2.jpg', fit: BoxFit.cover),
              )
            ),
            SizedBox(width:10),
            Expanded(
              flex:1,
              child: Container(
                color: Colors.yellow,
                height: 200,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 95,
                      color: Colors.green,
                      child: Image.network('https://gss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=258233027,3634251623&fm=173&app=49&f=JPEG?w=218&h=146&s=518CB9559FCE045B0CB3E008030070CA', fit: BoxFit.cover)
                    ),
                    SizedBox(height:10),
                    Container(
                      height: 95,
                      color: Colors.blue,
                      child: Image.network('https://gss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3134484765,3013641022&fm=173&app=49&f=JPEG?w=218&h=146&s=9F85AC44A57814264CBE55920300C098', fit: BoxFit.cover)
                    )
                  ],
                )
              )
            )
          ],
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {

  double size = 32.0;
  Color color = Colors.red;
  IconData icon;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white)
      )
    );
  }
}
