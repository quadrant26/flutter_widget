import 'package:flutter/material.dart';
import './tabs/Cart.dart';
import './tabs/Category.dart';
import './tabs/Home.dart';
import './tabs/setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index=0}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  
  int _currentIndex;
  _TabsState(index){
    this._currentIndex = index;
  }

  List _pageList = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          type: BottomNavigationBarType.fixed, // 配置底部按钮有多个按钮
          onTap: (int index){
            setState(() {
              this._currentIndex = index;
            });
            print(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              title: Text('购物车')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
            )
          ]
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: DrawerHeader(
                      child: Text('Hello, Fluter', style: TextStyle(color: Colors.white)),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        image: DecorationImage(
                          image: NetworkImage('https://pics5.baidu.com/feed/a686c9177f3e6709a335a4cd3cf0e738f8dc5583.jpeg?token=868c6e3193830af970c0704a961ecc9d&s=85A0F41488BA22863B80C9120100E091'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  )
                ],
              ),
              
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('首页')
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.card_travel),
                ),
                title: Text('购物车')
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text('设置')
              ),
              Divider(),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Text('Hello, Flutter'),
        ),
      ),
    );
  }
}
