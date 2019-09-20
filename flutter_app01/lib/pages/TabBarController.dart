import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 2
    );

    _tabController.addListener( (){
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarController'),
        bottom: TabBar(
          controller: this._tabController, // 
          tabs: <Widget>[
            Tab(text: '热销'),
            Tab(text: '推荐'),
          ],
        )
      ),
      body: TabBarView(
        controller: this._tabController, // 
        children: <Widget>[
          Center(
            child: Text('热销'),
          ),
          Center(
            child: Text('推荐'),
          ),
        ],
      )
    );
  }
}