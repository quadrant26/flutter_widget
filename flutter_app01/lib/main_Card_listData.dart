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

  Widget _getListData (){

  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map( (value){
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(value['imageUrl'], fit: BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://gss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1837580372,2968213145&fm=173&app=49&f=JPEG?w=218&h=146&s=E5D874804D503CC83414049901009093'),
                ),
                title: Text(value['title']),
                subtitle: Text(value['author'], overflow: TextOverflow.ellipsis, maxLines: 2,),
              )
            ],
          )
        );
      }).toList()
    );
  }
}
