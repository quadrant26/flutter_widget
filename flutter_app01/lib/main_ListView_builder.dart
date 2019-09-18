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

  List list = new List();
  HomePage(){
    for(var i = 0; i < 20; i++){
      this.list.add("我是第$i条");
      // this.list.add(ListTile(
      //   title: Text("我是$i列表")
      // ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context, index){
        // return this.list[index];
        return ListTile(
          title: Text(this.list[index])
        );
      }
    );
  }
}
