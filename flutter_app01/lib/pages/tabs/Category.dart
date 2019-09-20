import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: '热销'),
                    Tab(text: '推荐')
                  ],
                )
              )
            ]
          )
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('跳转到列表单页面'),
                      onPressed: (){
                        Navigator.pushNamed(context, '/form');
                      },
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                    )
                  ],
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第二个Tab'),
                ),
                ListTile(
                  title: Text('第二个Tab'),
                ),
                ListTile(
                  title: Text('第二个Tab'),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}