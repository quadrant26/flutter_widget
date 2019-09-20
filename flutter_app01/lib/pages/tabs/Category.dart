import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: '热销1'),
                    Tab(text: '推荐2'),
                    Tab(text: '推荐3'),
                    Tab(text: '推荐4'),
                    Tab(text: '推荐5'),
                    Tab(text: '推荐6'),
                    Tab(text: '推荐7'),
                    Tab(text: '推荐8'),
                    Tab(text: '推荐9'),
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
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第三个Tab'),
                ),
                ListTile(
                  title: Text('第三个Tab'),
                ),
                ListTile(
                  title: Text('第三个Tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第四个Tab'),
                ),
                ListTile(
                  title: Text('第四个Tab'),
                ),
                ListTile(
                  title: Text('第四个Tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第五个Tab'),
                ),
                ListTile(
                  title: Text('第五个Tab'),
                ),
                ListTile(
                  title: Text('第五个Tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第六个Tab'),
                ),
                ListTile(
                  title: Text('第六个Tab'),
                ),
                ListTile(
                  title: Text('第六个Tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第七个Tab'),
                ),
                ListTile(
                  title: Text('第七个Tab'),
                ),
                ListTile(
                  title: Text('第七个Tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第八个Tab'),
                ),
                ListTile(
                  title: Text('第八个Tab'),
                ),
                ListTile(
                  title: Text('第八个Tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第九个Tab'),
                ),
                ListTile(
                  title: Text('第九个Tab'),
                ),
                ListTile(
                  title: Text('第九个Tab'),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}