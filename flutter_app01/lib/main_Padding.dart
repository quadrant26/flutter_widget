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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0),
      child:GridView.count(
        childAspectRatio: 1.7,
        crossAxisCount: 2,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
            child: Image.network(
              'http://pic40.nipic.com/20140412/11412826_124950636000_2.jpg', 
              fit: BoxFit.cover
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
            child: Image.network(
              'http://b-ssl.duitang.com/uploads/item/201509/02/20150902134849_J4GWX.jpeg', 
              fit: BoxFit.cover
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
            child: Image.network(
              'http://pic38.nipic.com/20140217/18011310_172241656175_2.jpg', 
              fit: BoxFit.cover
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
            child: Image.network(
              'http://b-ssl.duitang.com/uploads/item/201203/11/20120311132147_vfZv4.jpeg', 
              fit: BoxFit.cover
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
            child: Image.network(
              'http://b-ssl.duitang.com/uploads/item/201410/21/20141021182002_CKJrA.jpeg', 
              fit: BoxFit.cover
            )
          ),
        ],
      )
    );
  }
}
