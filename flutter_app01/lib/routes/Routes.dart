import 'package:flutter/material.dart';

import '../pages/search.dart';
import '../pages/tabs/Form.dart';
import '../pages/Tabs.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';

// 配置路由
final routes = {
  '/': (context) => Tabs(),
  '/form': (context)=>FormPage(),
  '/product': (context) => ProductPage(),
  '/search': (context, {arguments}) => SearchPage(arguments:arguments),
  '/productInfo': (context, {arguments}) => ProductInfoPage(arguments: arguments)
};

// 固定写法
var onGenerateRoute = (RouteSettings settings){
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if( pageContentBuilder != null){
    if( settings.arguments != null){
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
};