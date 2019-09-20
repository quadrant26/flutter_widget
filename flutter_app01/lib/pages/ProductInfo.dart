import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  Map arguments;

  ProductInfoPage({Key key, this.arguments}) : super(key: key);

  _ProductInfoPageState createState() => _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {

  Map arguments;
  _ProductInfoPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('有状态组件传值'),
         ),
         body: Container(
          child: Text('pid=${arguments['pid']}')
        )
       ),
    );
  }
}