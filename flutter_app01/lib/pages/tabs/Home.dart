import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[

         ]
        ),
        Wrap(
         spacing: 10,
         runSpacing: 10,
         alignment: WrapAlignment.center,
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
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('跳转到TabBarController'),
             onPressed: (){
               Navigator.pushNamed(context, '/tabBarController');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('按钮演示页面'),
             onPressed: (){
               Navigator.pushNamed(context, '/buttons');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('表单演示页面'),
             onPressed: (){
               Navigator.pushNamed(context, '/textField');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('表单演示页面_获取表单内容'),
             onPressed: (){
               Navigator.pushNamed(context, '/textFieldGet');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('CheckBoxDemo'),
             onPressed: (){
               Navigator.pushNamed(context, '/fromCheckbox');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('RadioBoxDemo'),
             onPressed: (){
               Navigator.pushNamed(context, '/formRadio');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('Switch Demo'),
             onPressed: (){
               Navigator.pushNamed(context, '/formSwitch');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           SizedBox(height:20),
           RaisedButton(
             child: Text('Form List Demo'),
             onPressed: (){
               Navigator.pushNamed(context, '/formExample');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           )
         ],
       ),
      ]
    );
  }
}