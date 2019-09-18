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

  Widget _getListData(context, index){
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 12), // 设置空的box 来设置间隔
          Text(listData[index]['title'])
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(233, 233, 233, 0.9),
          width: 1
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.0, // 水平之间 Widget 的距离
        mainAxisSpacing: 10.0, // 垂直 Widget 的距离
        crossAxisCount: 3,
      ),
      itemBuilder: _getListData,
      itemCount: listData.length,
    );
  }
}
