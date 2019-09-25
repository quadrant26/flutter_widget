class Person{
  String name;
  num age;

  Person(this.name, this.age);
  void printInfo(){
    print('${this.name} ---- ${this.age}');
  }
}



void main(){
  Person p;
  p?.printInfo(); // 不会打印 p 不是

  Person p1 = new Person("张三", 18);
  p1?.printInfo();    // 可以

  if ( p1 is Person ){
    print("p1 is Person");
  }

  if ( p1 is Object ){
    print("p1 is Object");
  }

  // as 类型转换
  var p2;
  p2 = '';
  p2 = new Person("李四", 26);
  (p2 as Person).printInfo();

  // ..
  Person p3 = new Person("王五", 50);
  p3.name = "王五1";
  p3.age = 24;
  p3.printInfo();

  p3..name = "赵六"
    ..age = 20
    ..printInfo();

}