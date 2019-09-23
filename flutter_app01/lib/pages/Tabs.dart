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
        floatingActionButton: Container(
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.white,
          ),
          width: 65,
          height:65,
          margin: EdgeInsets.only(top: 0.0),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              // print("浮动按钮");
              setState(() {
               this._currentIndex = 1; 
              });
            },
            backgroundColor: this._currentIndex == 1 ? Colors.pink: Colors.yellow,
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                    child: UserAccountsDrawerHeader(
                      accountName: Text('King'),
                      accountEmail: Text('purvoi@163.com'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage('https://pics6.baidu.com/feed/6c224f4a20a44623c54ef1490e410a0b0df3d7fa.jpeg?token=2bfa2da73fb2e82eb9ced4f6dff4693a&s=DB8E2FC056522BEF5A86C15B030090DB'),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://pics5.baidu.com/feed/b8389b504fc2d562deff66fbd6cbe7ea77c66c14.jpeg?token=c265fb4e7af8f8ac385e42cdfd7f5c2e&s=54B7877415D37DCE600B594C0300E0B9'),
                          fit: BoxFit.cover
                        )
                      ),
                      otherAccountsPictures: <Widget>[
                        Image.network('https://pics6.baidu.com/feed/b999a9014c086e06e51acc34e85f0cf10bd1cbf9.jpeg?token=7666a5ed8a588ac83b9ce363d6bd0a08&s=353270942080495950B1B9F00300003B')
                      ],
                    )
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
                title: Text('设置'),
                onTap: (){
                  Navigator.of(context).pop(); //让侧边栏隐藏
                  Navigator.pushNamed(context, '/userDrawer');
                },
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
