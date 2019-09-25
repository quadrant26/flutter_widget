abstract class Animal{
  eat();

  printInfo(){
    print("我是抽象类里面的普通方法");
  }
}

class Dog extends Animal{
  @override
  eat() {
    // TODO: implement eat
    // return null;
    print("Dog eating");
  }
  
}

class Cat extends Animal{
  @override
  eat() {
    // TODO: implement eat
    // return null;
    print("Cat moveing");
  }
  
}

main (){
  Dog d = new Dog();
  d.eat();
  d.printInfo();    // 子类可以访问父抽象类的普通方法

  Cat c = new Cat();
  c.eat();
  c.printInfo();

  // Animal.printInfo();   // error  抽象类的普通方法无法直接实例化
}