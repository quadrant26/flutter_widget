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
    return ListTile(
      title: Text(listData[index]['title']),
      subtitle: Text(listData[index]['author']),
      leading: Image.network(listData[index]['imageUrl']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData
    );
  }
}
