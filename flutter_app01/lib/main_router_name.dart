import 'package:flutter/material.dart';
import './pages/search.dart';
import './pages/Tabs.dart';
import './pages/tabs/Form.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
      routes: {
        '/form': (context)=>FormPage(),
        '/search': (context) => SearchPage()
      }
    );
  }
}