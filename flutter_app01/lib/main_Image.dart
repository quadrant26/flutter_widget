import 'package:flutter/material.dart';

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
    return Center(
      child: Container(
        child: Image.network('https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3576736236,2578985887&fm=173&app=49&f=JPEG?w=218&h=146&s=1E286C874E1205C0501970290300A041',
          // alignment: Alignment.bottomRight,
          // color: Colors.blue,
          // colorBlendMode: BlendMode.dst,
          // fit: BoxFit.cover
          repeat: ImageRepeat.repeat,
        ),
        width: 300,
        height: 600,
        decoration: BoxDecoration(
          color: Colors.yellow
        ),
      )
    );
  }
}
