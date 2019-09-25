# Dart 语法

1. 基本语法

    注释 //

    void 无返回值

2. 变量和常量

    定义变量

    ```dart
        var str = ""; // 可以定义任何类型的变量

        // string 变量
        String abc = "123"

        // number 变量
        int number = 1
    ```

    定义常量 不能修改

        ```dart
            // final
            // 可以定义时间戳的常量，惰性初始化，第一次使用才初始化
            final stri = "str";
            final a = new DateTime.now();

            // const
            const number = 123;
        ```

3. 数据类型

    字符串类型

        ``` dart
            String str2 = "thjs"; // 推荐
            var str1 = "324";
            String str3 = '''add ''';
            String str4 = '''
                add
                adfs
                asdfsd
            ''';

            // 字符串拼接
            print('$str $str1');
            print(str+ " " +str1);

            

        ```
    
    数值类型

        ```dart
            // 数值类型
            int num = 123; // 必须是整型
            double num2 = 123.3; // 浮点型
        ```

    布尔型

        ```dart
            bool flag1 = true;
            bool flag2 = false;
        ```

    条件判断

        ```dart
            if ( flag1 ){
                ...
            }else{
                ...
            }
        ```

    数组/集合

        ```dart
            // 数组/集合
            var l1 = ['aaa', 'bbb', 'eee'];
            print(l1);

            print(l1.length)
            print(l1[1]);

            var l2 = new List();
            l2.add(111);
            l2.add(222);
            print(l2);

            // 定义一个指定类型
            var l3 = new List<String>();
            l3.add("123");
        ```

    Map

        ```dart
            var person = {
                "name": "张三",
                "age": 20
            };

            // map 用 方括号的形式进行访问
            print(person['name']);

            var p = new Map();
            p["name"] = "李三";
            p["age"] = 12;
        ```

    判断类型 is

        ```dart
            var str = "123";
            if( str is String){

            }
        ```

4. 运算符

    算术运算符    + - / * % ~/(取整)

    关系运算符  == != >= <= > <

    逻辑运算符  && || !

    赋值运算符 = ??= (如果右边不为空则赋值)

    复合运算符 += -= *= /= %= ~/=

5. 流程控制

    条件判断
        
        if else

        switch case
    
    三目运算

        bool ? operation1 : operation2

    ?? 

        ```dart
            var a;
            var b = a??10;
            print(b);

            var c = 22;
            var d = c??23;
            print(d);

            // ?? 进行运算时， 如果前面的变量存在则直接复制，不存在则赋值后面的值
            // expr1 ?? expr2
            // 如果expr1为非空，则返回其值；否则，计算并返回expr2的值
        ```

    ++ --
        ```dart
            var a = 10;
            var b= ++a;

            // 如果 ++ -- 写在前面，先运算，后赋值
            // 如果 ++ -- 写在后面，先赋值，后运算
        ```

    循环

        for

        while

        do while

6. 类型转换

    Number 与 String

        number -> string    number.toString()

        string -> number    int.parse(string) || double.parse(string)

    isEmpty 盘点字符串是否为空

        string.isEmpty

7. List 属性和方法

    常用属性

        length      长度
        reversed    翻转   返回的是类似于 Set (a, b, c) 翻转之后需要 调用 toList()
        isEmpty     是否为空
        isNotEmpty  是否不为空
    
    常用方法

        add         增加
        addAll      拼接数组
        indexOf     查找    传入具体值
        remove      删除    传入具体值
        removeAt    删除    传入索引值
        fillRange   修改
        insert(index, value)    指定位置插入
        insertAll(index, list)  指定位置插入 List
        toList()            其他类型转换为 List
        join()      List 转化为 字符串
        split()     字符串转为 List 分割字符串
        forEach
        map
        where
        any
        every

8. Set

    是没有顺序不能重复的集合，不能通过索引值去获取值
    
    add

9. Map

    常用属性

        keys                获取所有的 key 值
        values              获取所有的 value 值
        isEmpty             是否为空
        isNotEmpty          是否不为空

    常用方法

        remove(key)         删除指定的key的数据
        addAll({..})        合并映射，给映射内添加属性
        containsValue       查看映射内的值  返回 true/false
        forEach
        map
        where
        any
        every

10. 自定义方法

    // 返回类型 List String int ....
    返回类型 方法名称(参数1, 参数2, 参数3...){
        方法体...
        return 返回值;
    }

    // 默认参数
    // 在定义方法的时候，使用方括号 [arg1=value]
    // 可选参数
    // 定义方法时，可选参数用方括号进行约束
    // 匿名参数
    // 匿名参数使用 花括号 进行约束 {arg1}
    // 匿名参数调用的时候 方法名称(参数1, 匿名参数:匿名参数值, ...)
    方法名称(参数1, [默认参数="arg1value", 可选参数1,], {匿名参数}){

    }

11. 类与对象

    // 定义类名时首字母大写
    // 定义
    class 类名{

        // 默认构造函数
        类名(String value){
            this.attr = value
        }

        // 调用类实例化初始化变量
        类名():attr=value{

        }

        get area{
            return xxx;
        }

        set areaValue(value){
            this.attr = value
        }
    }

    // 使用
    变量名 = new 类名();
    类名 变量名 = new 类名();
    // 访问get
    类名变量.area
    // 访问set
    类名变量.areaValue = value

    静态

        使用 static 实现类的属性和方法
        静态方法不能访问非静态成员，非静态方法可以访问静态成员

    // 对象操作符
    ?
    is
    as
    ..

        ```dart
            class Person{
                String name;
                int age;

                Person(this.name, this.age);

                void printInfo(){
                    print("${this.name}---${this.age}")
                }
            }

            // ?
            Person p2 = new Person();
            p1?.printInfo();

            // as
            p3 = new Person('张三', 20);
            p3 as Person
            p3.printInfo();
            
            // is
            Person p2 = new Person('张三', 20);
            print(p2 is Person); // true
            print(p2 is Object); // true

            // ..
            Person p1 = new Person('张三', 20);
            p1.name="李四"
              ..age=30
              ..printInfo();

            
        ```

12. 类的继承

    ```dart
        class Person{
            String name = "张三";
            num age = 20;
            void printInfo(){
                print("${this.name}---${this.age}")
            }
        }

        class Web extends Person{

        }

        Web w = new Web();
        w.printInfo();
    ```

    ```dart
        class Person{
            String name;
            num age;
            Person(this.name, this.age)
            void printInfo(){
                print("${this.name}---${this.age}")
            }

            void work(){
                print("${this.name} doing something...");
            }
        }

        class Web extends Person{
            Web(String name, num age) : super(name, age)

            
            run (){
                // 子类调用父类的方法
                super.work();
            }
            

            // 覆写父类的方法
            @override // 建议加 @override 
            void printInfo(){
                print("姓名：${this.name} --- 年龄：${this.age}")
            }
        }

        Web w = new Web();
        w.printInfo();
    ```

13. 抽象类

    使用 abstract 定义

    抽象方法不能用 abstract 声明， 没有方法体的方法为抽象方法

    子类继承抽象类必须实现父类的抽象方法

    如果把抽象类当作接口，必须实现抽象类里面的定义的所有的属性和方法

    抽象类不能被实例化，只有继承的子类可以

    extends抽象类 和 implements 区别

    如果要复用抽象类里面的方法，并且要用抽象方法约束子类的话，就用 extends 继承抽象类

    如果只是吧抽象类当作标准的话， 就用 implements 实现抽象类


14. 接口

    没有 interface 关键字定义接口， 而是普通类或抽象类都可以作为接口被实现

    使用 implements 关键字实现

    实现的类是普通类，会将普通类和抽象类的属性和方法全部覆写

    抽象类可以定义抽象方法，普通类不可用， 所有一般使用抽象类定义接口

    实现多个接口

        ```dart
            abstract class A{
                String name;
                printA();
            }

            abstract class B{
                printB();
            }

            class C implements A, B{

                @override
                String name;

                @override
                printA() {
                    // TODO: implement printA
                    return null;
                }

                @override
                printB() {
                    // TODO: implement printB
                    return null;
                }

            }
        ```

15. Mixins

    - 作为 mixins 的类只能继承 Object, 不能继承其他类
    - 作为 mixins 的类不能有构造函数
    - 一个类可以 mixins 多个 mixins 类
    - mixins 不是继承， 也不是接口

    ```dart

        class A{
            void printA(){
                print('A');
            }
        }

        class B{
            void printB(){
                print('B');
            }
        }

        class C with A, B{

        }

        main (){
            var c = new C();
            c.printA();
            c.printB();
        }
    ```
    
16. 泛型

    // 返回指定类型
    T function <T> (T value){
        return value
    }

    // 不指定返回类型
    function <T> (T value){
        return value
    }

    ```dart
        T getData<T>(T value){
            return value
        }

        void main (){
            getData<String>("xxx")
            getData<int>(123)
        }
    ```

17. 库

    - 自定义库

        import './demo01.dart';

    - 内置库

        import 'dart:io';
        import 'dart:math';

    - 第三方库

        pub 

        pubspec.yaml 包管理器

    - 部分导入

        import 库名 show 需要用的方法
        import 库名 hide 隐藏不需要的方法

    - 延迟加载

        import 库名 deferred as 延迟加载库名


