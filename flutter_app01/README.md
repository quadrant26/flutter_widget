# flutter_app01

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

[TOC]

- 引入本地图片

    创建一个images文件夹，存放于根目录
    适配 需要创建 2.0x 和 3.0x 的文件夹目录
    调用 Image.asset('path')

- 列表

    ListView

    静态列表

        ``` dart
        Container(
            height: 100,
            child: ListView(
                scrollDirection: Axis.horizontal, // 水平列表 Axix.vertical // 垂直列表
                children: <Widget>[
                    ...
                ]
            )
        )
        ```
    
    动态列表

        ```dart
        ListView.builder(
            itemCount: this.list.length,
            itemBuilder: (context, index){
                // return this.list[index];
                return ListTile(
                title: Text(this.list[index])
                );
            }
        );
        ```

- 网格布局 gridView

    GridView.count

        ```dart
            return GridView.count(
                crossAxisSpacing: 10.0, // 水平之间 Widget 的距离
                mainAxisSpacing: 10.0, // 垂直 Widget 的距离
                padding: EdgeInsets.all(10.0),
                crossAxisCount: 3,
                childAspectRatio: 0.7, // 宽度和高度的比例
                children: _getListData(),
            );
        ```

    GridView.builder

        ```dart
            return GridView.builder(
                padding: EdgeInsets.all(10.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10.0, // 水平之间 Widget 的距离
                    mainAxisSpacing: 10.0, // 垂直 Widget 的距离
                    crossAxisCount: 3,
                ),
                itemBuilder: _getListData,
                itemCount: listData.length,
            );
        ```

- 页面布局组件 

    ClipOval 圆角
    
        ```dart
        ClipOval(
          child: Image.network(
            'http://b.hiphotos.baidu.com/image/h%3D300/sign=05b297ad39fa828bce239be3cd1e41cd/0eb30f2442a7d9337119f7dba74bd11372f001e0.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.cover
          )

          CircleAvatar(
            backgroundImage: NetworkImage('https://gss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1837580372,2968213145&fm=173&app=49&f=JPEG?w=218&h=146&s=E5D874804D503CC83414049901009093'),
        )
        ```

    Padding

        ```dart
            Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0),
                child: child:GridView.count(
                    childAspectRatio: 1.7,
                    crossAxisCount: 2,
                    children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                    )
                )
            )
        ```

    Column

        ```dart
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴的显示方式 竖向排列方式
            crossAxisAlignment: CrossAxisAlignment.end, // 根据外层空间来定义
            children: <Widget>[
                ...
            ],
        )
      ```

    Row

        ```dart
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴的显示方式 横向向排列方式
            crossAxisAlignment: CrossAxisAlignment.end, // 根据外层空间来定义
            children: <Widget>[
                ...
            ],
        )
        ```

    Stack 层叠组件

     Align Positioned

        ```dart
            child: Stack(
            // alignment: Alignment.center,
            children: <Widget>[
                Positioned(
                left: 10,
                child: Icon(Icons.home, size: 40, color: Colors.white),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.search, size: 30, color: Colors.greenAccent),
                ),
                Align(
                    alignment: Alignment(1, 0.7),
                    child: Icon(Icons.settings, size: 30, color: Colors.red),
                )
            )
        ```

    AspectRatio 子元素宽高比

        ```dart
            child: AspectRatio(
                aspectRatio: 2.0/1.0,
                child: Container(
                color: Colors.red
                )
            )
        ```

    Card

        ```dart
            Card(
            margin: EdgeInsets.all(10),
            child: Column(
                children: <Widget>[
                ListTile(
                    title: Text('张三', style: TextStyle(fontSize: 28.0)),
                    subtitle: Text('高级工程师'),
                ),
                ListTile(
                    title: Text('电话xxxxxx'),
                ),
                ListTile(
                    title: Text('地址xxxxxx'),
                )
                ],
            )
            )
        ```

    Wrap

        ```dart
            Wrap(
                spacing: 10,  // 横轴之间的距离
                runSpacing: 20, // 纵轴的之间的距离
                alignment: WrapAlignment.end, // 对齐方式
                children: <Widget>[

                ]
            )
        ```

    BottomNavigationBar

        ```dart
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: 0,
                onTap: (int index){
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
                    )
                ]
            ),
        ```

- 路由

    1. 基本路由

        ```dart
            Navigator.of(context).push(
                MaterialPageRoute(
                   builder: (context)=>SearchPage(arg1: arg1value) // 可以进行传值
                )
            );

            // 浮动按钮， 位置位于右下角
            floatingActionButton: FloatingActionButton(
                onPress: (){

                }
            ),
            appBar: AppBar(),
            body: Container()
        ```

    2. 命名路由

        ```dart (main.dart)
            MaterialApp(
                routes: {
                    '/form': (context)=>FormPage(),
                    '/search': (context) => SearchPage()
                }
            )

            // use
            Navigator.pushNamed(context, '/search');
            
        ```

        ```dart
        final routes = {
            '/form': (context)=>FormPage(),
            '/search': (context, {arguments}) => SearchPage(arguments: arguments)
        };

        MaterialApp(
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
        )

        // 使用
        Navigator.pushNamed(context, '/search', arguments: {'id': 1323});

        // 无状态接收参数
        final arguments;
        SearchPage({this.arguments});
        // 打印参数
        print(arguments != null ? arguments['id'] : '0')

        // 有状态接收参数
        class ProductInfoPage extends StatefulWidget {
            final Map arguments;

            ProductInfoPage({Key key, this.arguments}) : super(key: key);

            _ProductInfoPageState createState() => _ProductInfoPageState(arguments: this.arguments);
        }

        class _ProductInfoPageState extends State<ProductInfoPage> {

            Map arguments;
            _ProductInfoPageState({this.arguments});
        }
        ```

    3. 替换路由

        ```
        Navigator.of(context).pushReplacementNamed('/registerSecond');
        // registerSecond 是需要替换的路由地址
        ```

    4. 返回根目录

        ```
        // 返回根目录
        // Tabs 代表底部导航组件
        // new Tabs()
        // new Tabs(index: 3)
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(
            builder: (context) => new Tabs(index: 3) // 指定跟路由位置
            ), 
            (route) => route == null // 路由置空
        );
        ```

- appBar

    1. normal

        ```dart
            AppBar(
                title: Text('AppBarDemoPage'),
                centerTitle: true, // 标题居中显示
                backgroundColor: Colors.red,  // 导航颜色
                // leading: Icon(Icons.menu),   // 导航左侧图标
                leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){
                    print('menu');
                },
                ),
                // actions // 右侧图标
                actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search, size: 32, color: Colors.white),
                    onPressed: (){

                    },
                ),
                IconButton(
                    icon: Icon(Icons.settings, size: 32, color: Colors.white),
                    onPressed: (){
                    
                    },
                )
                ],
            )
        ```
    
    2. 顶部 topbar

        ```dart
            DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                    title: Text('AppBarDemoPage'),
                    centerTitle: true, // 标题居中显示
                    bottom: TabBar(
                        tabs: <Widget>[
                        Tab( text: '热门'),
                        Tab( text: '推荐')
                        ],
                    )
                    ),
                    body: TabBarView(
                    children: <Widget>[
                        ListView(
                        children: <Widget>[
                            ListTile(
                            title: Text('第一个tab')
                            ),
                            ListTile(
                            title: Text('第一个tab')
                            ),
                            ListTile(
                            title: Text('第一个tab')
                            ),
                            ListTile(
                            title: Text('第一个tab')
                            ),
                        ],
                        ),
                        ListView(
                        children: <Widget>[
                            ListTile(
                            title: Text('第二个tab')
                            ),
                            ListTile(
                            title: Text('第二个tab')
                            ),
                            ListTile(
                            title: Text('第二个tab')
                            ),
                            ListTile(
                            title: Text('第二个tab')
                            ),
                        ],
                        ),
                    ],
                )
            )
        );

        AppBar(
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
        )
        ```

    3. TabController
     
        ```dart
            class TabBarControllerPage extends StatefulWidget {
                @override
                _TabBarControllerPageState createState() => _TabBarControllerPageState();
                }

            class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {

                TabController _tabController;

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
                        bottom: TabBar(
                            controller: this._tabController,
                            tabs: <Widget>[

                            ]
                        )
                    ),
                    body: TabBarView(
                        controller: this._tabController,
                        children: <Widget>[]
                    )
                }
            }
        ```

- 抽屉组件 Drawer

    ``` dart
        Scaffold(
            drawer: Drawer(
                child: Text('Hello, Flutter'),
            ),
            endDrawer: Drawer(
                child: Text('Hello, Flutter'),
            ),
        )

        DrawerHeader(
            child: Text('Hello, Fluter', style: TextStyle(color: Colors.white)),
            decoration: BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
                image: NetworkImage('https://pics5.baidu.com/feed/a686c9177f3e6709a335a4cd3cf0e738f8dc5583.jpeg?token=868c6e3193830af970c0704a961ecc9d&s=85A0F41488BA22863B80C9120100E091'),
                fit: BoxFit.cover
            )
            ),
        )

        UserAccountsDrawerHeader(
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
    ```

    侧边栏路由 点击让侧边栏消失
    ```
        onTap: (){
            Navigator.of(context).pop(); //让侧边栏隐藏
            Navigator.pushNamed(context, '/userDrawer');
        },
    ```

- 按钮组件

    RaisedButton    凸起按钮 Material Design
    ``` dart
        RaisedButton.icon(
            icon: Icon(Icons.settings),
            label: Text('图标按钮'),
            onPressed: (){
                
            },
        )
        RaisedButton(
            child: Text('有阴影按钮'),
            color: Colors.blue,
            textColor: Colors.white,
            elevation: 10.0,
            onPressed: (){
                print('阴影按钮');
            },
        ),

        RaisedButton(
            child: Text('圆角按钮'),
            color: Colors.blue,
            textColor: Colors.white,
            elevation: 20.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            onPressed: (){
                print('圆角按钮');
            },
        )

        Container(
            width: 100,
            height: 100,
            child: RaisedButton(
                child: Text('圆形按钮'),
                color: Colors.blue,
                textColor: Colors.white, 
                elevation: 20.0,
                splashColor: Colors.red, // 波纹
                shape: CircleBorder(
                side: BorderSide(
                    color: Colors.white
                )
                ),
                onPressed: (){
                print('圆形按钮');
                },
            ),
        )
    ```

    FlatButton  扁平化按钮

    OutlineButton   线框按钮

    IconButton  图标按钮

    ButtonBar   按钮组

    FloatingActionButton 浮动按钮

        ```dart
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pink,
            child: Icon(Icons.add, color: Colors.black, size: 36),
            child: Icon(Icons.add),
            onPressed: (){
            print("浮动按钮");
            },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Column(...)
        ```

- 表单

    1. TextField

        ```dart
            TextField(
              maxLines: 3, // 多行文本框
              obscureText: true, // 变成密码框
              decoration: InputDecoration(
                hintText: '多行文本框', // 类似于 placeholder
                border: OutlineInputBorder(), // 边框设置
                labelText: '用户名', // 提示字段名称
                labelStyle: TextStyle()
              ),
            )
        ```

        获取表单的内容
        ```dart
        var _username = new TextEditingController();

            ...
            TextField(
                decoration: InputDecoration(
                labelText: '用户名',
                hintText: '请输入用户名',
                ),
                controller: _username,
                onChanged: (value){
                _username.text = value;
                },
            ),
            ...
        ```

    2. CheckBox

        ```dart
            Checkbox(
                value: flag,
                onChanged: (value){
                  setState(() {
                   flag = value; 
                  });
                },
                activeColor: Colors.pink,  // 选中的状态背景颜色
              )
        ```

    3. Radio

        ```dart
            Radio(
                value: 1,
                onChanged: (v){
                setState(() {
                    this._sex = v;
                });
                },
                groupValue: _sex,  // 按钮组必备
            ),
        ```

    4. Switch

        ```dart
            Switch(
              value: flag,
              onChanged: (val){
                setState(() {
                  flag = val;
                });
              },
            ),
        ```

    5. CheckboxListTile

        ``` dart
            CheckboxListTile(
                value: this.flag,
                onChanged: (value){
                setState(() {
                    flag = value; 
                });
                },
                title: Text('标题'),
                subtitle: Text('这是二级标题'),
                secondary: Icon(Icons.help), // 图标
            )
        ```

    6. RadioListTile

        ```dart
            RadioListTile(
                value: 1,
                onChanged: (v){
                setState(() {
                    this._sex = v;
                });
                },
                groupValue: this._title,
                title: Text('标题'),
                subtitle: Text('二级标题'),
                secondary: Icon(Icons.mail),
                selected: this._title==1, // 设置选择是高亮状态
            ),
        ```

    7. SwitchListTile

        ```dart
            SwitchListTile(
              value: this.flag,
              title: Text('标题'),
              onChanged: (val){
                setState(() {
                  flag = val;
                });
              },
              subtitle: Text('子标题'),
              secondary: Icon(Icons.mail),
        ```

    8. Slide


- 时间

    1. 日期和时间

        ```dart
            var now = new DateTime.now();
            var a = now.millisecondsSinceEpoch;
            print(a); // 毫秒
            print(DateTime.fromMillisecondsSinceEpoch(a)); // 转化成日期
        ```

        ```dart
            showDatePicker(
                context: context,
                initialDate: _nowDate,
                firstDate: DateTime(1980),
                lastDate: DateTime(2100),
            ).then((result){
                print(result);
            });

            _showDatePicker2() async{
                var result = await showDatePicker(
                    context: context,
                    initialDate: _nowDate,
                    firstDate: DateTime(1980),
                    lastDate: DateTime(2100),
                );

                print(result);
            }
        ```

    2. 国际化

        ```dart

            # pubspec.yaml
            dependencies:
                flutter_localizations:
                    sdk: flutter

            # main.dart
            import 'package:flutter_localizations/flutter_localizations.dart';

            new MaterialApp(
                title: 'Flutter Demo',
                theme: new ThemeData(
                    primarySwatch: Colors.blue,
                ),
                home: new HomePage(title: ''),
                localizationsDelegates: [                       // <-- 添加
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: [                             // <-- 添加语言包
                    const Locale('zh', 'CH'),
                ],
            )
        ```
