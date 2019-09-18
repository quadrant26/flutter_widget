import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    return ListView(
      // scrollDirection: Axis.vertical, 
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.settings_applications,
            color: Colors.blue,
            size: 36.0
          ),
          title: Text('爆料！Model S纽北怒刷圈速击败Taycan'),
          subtitle: Text('华为副董事长谈5G技术出售：不是复杂问题，可减少安全担忧'),
        ),
        ListTile(
          leading: Image.network('http://a.hiphotos.baidu.com/image/h%3D300/sign=cb60c5d972f0f736c7fe4a013a54b382/f603918fa0ec08fa3139e00153ee3d6d55fbda5f.jpg'),
          title: Text('爆料！Model S纽北怒刷圈速击败Taycan'),
          subtitle: Text('华为副董事长谈5G技术出售：不是复杂问题，可减少安全担忧'),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.blue,
            size: 36.0
          ),
          title: Text('爆料！Model S纽北怒刷圈速击败Taycan'),
          subtitle: Text('华为副董事长谈5G技术出售：不是复杂问题，可减少安全担忧'),
        ),
        ListTile(
          leading: Icon(
            Icons.access_alarm,
            color: Colors.blue,
            size: 36.0
          ),
          title: Text('爆料！Model S纽北怒刷圈速击败Taycan'),
          subtitle: Text('华为副董事长谈5G技术出售：不是复杂问题，可减少安全担忧'),
        ),
        ListTile(
          leading: Icon(
            Icons.access_alarm,
            color: Colors.blue,
            size: 36.0
          ),
          title: Text('爆料！Model S纽北怒刷圈速击败Taycan'),
          subtitle: Text('华为副董事长谈5G技术出售：不是复杂问题，可减少安全担忧'),
          trailing: Image.network('http://a.hiphotos.baidu.com/image/h%3D300/sign=a62e824376d98d1069d40a31113eb807/838ba61ea8d3fd1fc9c7b6853a4e251f94ca5f46.jpg'),
        )
      ],
    );
  }
}
