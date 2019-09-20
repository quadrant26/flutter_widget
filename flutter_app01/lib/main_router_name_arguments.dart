import 'package:flutter/material.dart';
import './pages/search.dart';
import './pages/Tabs.dart';
import './pages/tabs/Form.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget{

  final routes = {
    '/form': (context)=>FormPage(),
    '/search': (context, {arguments}) => SearchPage(arguments:arguments)
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
      onGenerateRoute: (RouteSettings settings){
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
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
      }
    );
  }
}