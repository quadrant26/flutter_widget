import 'package:flutter/material.dart';

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
               Navigator.pushNamed(context, '/search', arguments: {'id': 1323});
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('跳转到商品页面'),
             onPressed: (){
               Navigator.pushNamed(context, '/product');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('跳转到AppBar'),
             onPressed: (){
               Navigator.pushNamed(context, '/appBar');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           )
         ],
       ),
    );
  }
}