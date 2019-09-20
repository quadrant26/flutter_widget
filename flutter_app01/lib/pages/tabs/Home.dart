import 'package:flutter/material.dart';
import '../search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           RaisedButton(
             child: Text('跳转到搜索页面'),
             onPressed: (){
               Navigator.of(context).push(
                 MaterialPageRoute(
                   builder: (context)=>SearchPage()
                 )
               );
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('跳转到列表单页面'),
             onPressed: (){

             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           )
         ],
       ),
    );
  }
}