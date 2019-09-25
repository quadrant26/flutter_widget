class Rect{
  num height;
  num width;

  Rect(this.height, this.width);

  // get 方式不用 括号
  get area{
    return this.height * this.width;
  }

  set areaHeight(value){
    this.height = value;
  }
}

void main(){
  Rect r = new Rect(10, 8);
  print("面积: ${r.area}");     // get 直接通过访问属性的方式进行访问
  r.areaHeight = 6;
  print("面积: ${r.area}");
}