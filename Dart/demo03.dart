
// 没有返回值
void main (){
  
  // 数据类型
  // 字符串
  var str = "123";
  String str1 = "hello, World";
  String str2 = '''add '''; 
  String str4 = '''
      add
      adfs
      asdfsd
  ''';

  // 字符串拼接
  print('$str $str1');
  print(str+ " " +str1);

  // 数值类型
  int num = 123;
  double num2 = 123.3;

  // 布尔值
  bool flag1 = true;
  bool flag2 = false;

  // 条件判断
  if (flag1){
    print("123");
  }else{
    print("456");
  }

  // 数组/集合
  var l1 = ['aaa', 'bbb', 'eee'];
  print(l1);

  print(l1.length);
  print(l1[1]);


  var l2 = new List();
  l2.add(111);
  l2.add(222);
  print(l2);

  // 定义一个指定类型
  var l3 = new List<String>();
  l3.add("123");

  // Map
  var person = {
    "name": "张三",
    "age": 20
  };

  // map 用 方括号的形式进行访问
  print(person['name']);

  var p = new Map();
  p["name"] = "李三";
  p["age"] = 12;

  // 判断类型 is
  if( str is String){
    print("String");
  }

}