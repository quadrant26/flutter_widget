import 'package:flutter/material.dart';

import '../pages/search.dart';
import '../pages/tabs/Form.dart';
import '../pages/Tabs.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/userDrawer.dart';
import '../pages/buttons.dart';
import '../pages/form/textField.dart';
import '../pages/form/textFieldGet.dart';
import '../pages/form/checkbox.dart';
import '../pages/form/radioDemo.dart';
import '../pages/form/switchDemo.dart';
import '../pages/form/formExample.dart';
import '../pages/time/time.dart';
import '../pages/time/timeOther.dart';

// 配置路由
final routes = {
  '/': (context) => Tabs(),
  '/form': (context)=>FormPage(),
  '/product': (context) => ProductPage(),
  '/search': (context, {arguments}) => SearchPage(arguments:arguments),
  '/productInfo': (context, {arguments}) => ProductInfoPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appBar': (context) => AppBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/userDrawer': (context) => UserDrawerPage(),
  '/buttons': (context) => ButtonsPage(),
  '/textField': (context) => TextFieldDemoPage(),
  '/textFieldGet': (context) => TextFieldGetDemoPage(),
  '/fromCheckbox': (context) => CheckboxDemoPage(),
  '/formRadio': (context) => RadioDemoPage(),
  '/formSwitch': (context) => SwitchDemoPage(),
  '/formExample': (context) => FormExamplePage(),
  '/time': (context) => TimeDemoPage(),
  '/timeOther': (context) => TimeOtherDemoPage(),
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