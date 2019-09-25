class Person{
  static String name = "张三";
  num age = 20;
  static void show (){
    print(name);
  }

  // 非静态方法 可以 访问静态成员 以及 非静态成员
  void printInfo(){
    print(name);        // 访问静态属性
    print(this.age);    // 访问非静态成员

    show();       // 调用静态方法
  }

  // 静态方法可以访问静态方法和静态成员，不能访问非静态属性和方法
  static void printUserInfo(){
    print(name);    // 静态属性
    show();         // 静态方法

    // print(this.age);  // error 不能访问非静态属性
    // printInfo();      // error 不能访问非静态方法
  }
}



void main(){
  // 直接通过类名来访问
  print(Person.name);
  Person.show();

  Person p = new Person();
  p.printInfo();

  // 静态方法
  Person.printUserInfo();
}