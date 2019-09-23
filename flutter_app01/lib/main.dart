import 'package:flutter/material.dart';
import './pages/Tabs.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './routes/Routes.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // home: Tabs(),
      localizationsDelegates: [                       // <-- 添加
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [                             // <-- 添加语言包
          const Locale('zh', 'CH'),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // 初始化需要加载的路由
      onGenerateRoute: onGenerateRoute
    );
  }
}