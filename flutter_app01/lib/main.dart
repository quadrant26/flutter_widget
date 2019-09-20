import 'package:flutter/material.dart';
import './pages/Tabs.dart';

import './routes/Routes.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // home: Tabs(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/buttons', // 初始化需要加载的路由
      onGenerateRoute: onGenerateRoute
    );
  }
}