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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network('https://gss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1394335407,3270228025&fm=173&app=49&f=JPEG?w=218&h=146&s=320926EA6B031F4D56F83B14030010CC', fit: BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://gss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1837580372,2968213145&fm=173&app=49&f=JPEG?w=218&h=146&s=E5D874804D503CC83414049901009093'),
                ),
                title: Text('xxxx'),
                subtitle: Text('xxxxxxxxx'),
              )
            ],
          )
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network('https://gss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1394335407,3270228025&fm=173&app=49&f=JPEG?w=218&h=146&s=320926EA6B031F4D56F83B14030010CC', fit: BoxFit.cover),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network('https://gss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1394335407,3270228025&fm=173&app=49&f=JPEG?w=218&h=146&s=320926EA6B031F4D56F83B14030010CC', width: 60, height: 60, fit: BoxFit.cover)
                ),
                title: Text('xxxx'),
                subtitle: Text('xxxxxxxxx'),
              )
            ],
          )
        )
      ],
    );
  }
}
