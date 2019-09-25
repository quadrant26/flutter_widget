T getData<T>(T value){
    return value;
}

class PrintClass<T> {
  List list = new List<T>();
  void add(T value){
    this.list.add(value);
  }

  void printInfo(){
    for(var i =0; i < this.list.length; i++){
      print(this.list[i]);
    }
  }
}

void main (){
  print(getData<String>("xxx"));
  print(getData<int>(123));

  List list = new List<String>();
  list.add("xf");

  PrintClass p = new PrintClass<String>();
  p.add("Hello");
  p.add("Dart");
  p.printInfo();
}