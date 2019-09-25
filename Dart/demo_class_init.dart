class Rect{
  num height;
  num width;

  // 实例化之前进行初始化变量实例
  Rect():height=2, width=20{

  }

  // get 方式不用 括号
  get area{
    return this.height * this.width;
  }

  set areaHeight(value){
    this.height = value;
  }
}

void main(){
  Rect r = new Rect();
  print("面积: ${r.area}");     // get 直接通过访问属性的方式进行访问
  r.areaHeight = 6;
  print("面积: ${r.area}");
}