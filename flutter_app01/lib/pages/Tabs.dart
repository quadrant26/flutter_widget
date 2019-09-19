import 'package:flutter/material.dart';
import './tabs/Cart.dart';
import './tabs/Category.dart';
import './tabs/Home.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    CartPage(),
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
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.merge_type),
              title: Text('个人中心')
            )
          ]
        ),
      ),
    );
  }
}
