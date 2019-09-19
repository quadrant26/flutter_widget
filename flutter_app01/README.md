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

