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
        body: HomePage(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  List<Widget> _getListData(){
    
    var templist = listData.map((value){
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            Text(value['title'])
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 1
          )
        ),
      );
    });
    return templist.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0, // 水平之间 Widget 的距离
      mainAxisSpacing: 10.0, // 垂直 Widget 的距离
      padding: EdgeInsets.all(10.0),
      crossAxisCount: 3,
      children: _getListData(),
    );
  }
}
