import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  
  final arguments;

  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Container(
        child: Text('这是搜索页面 ${arguments != null ? arguments['id'] : '0'}'),
      )
    );
  }
}