// 接口

abstract class DB{
  String uri; // 数据库的链接地址
  add(String data);
  edit();
  delete();
}

class Mysql implements DB{

  @override
  String uri;

  Mysql(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    // return null;
    print("这是 add 方法 --> ${data}");
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  edit() {
    // TODO: implement edit
    return null;
  }

  
}

class MsSql implements DB{
  
  @override
  String uri;
  
  MsSql(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  edit() {
    // TODO: implement edit
    return null;
  }
  
}

main (){
  Mysql mysql = new Mysql('localhost:3306');
  mysql.add('123334');
}