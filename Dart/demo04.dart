
// 没有返回值
void main (){
  
  int a = 13;
  int b = 5;

  // 算术运算符
  print(a+b); // +
  print(a-b); // 
  print(a/b); // 
  print(a/b); // 
  print(a%b); // 取余
  print(a~/b); // 取整

  // 关系运算符
  print(a==b);
  print(a!=b);
  print(a>=b);
  print(a<=b);
  print(a>b);
  print(a<b);

  // 逻辑运算符
  bool flag1 = false;
  bool flag2 = true;
  print(!flag1); // 取反
  print(flag1 && flag2);
  print(flag1 || flag2);

  // 赋值运算符
  int c = a+b;
  int d = 23;
  int f;
  f??=d;
  print(f);

  // 复合运算符
  print(a+=b); // +
  print(a-=b); // 
  print(a*=b); // 
  print(a%=b); // 取余
  print(a~/=b); // 取整

}