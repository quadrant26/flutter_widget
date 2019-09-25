abstract class ObjectCache{
  getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache{
  getByKey(String key);
  void setByKey(String key, String value);
}

// 泛型类
abstract class Cache<T>{
  getKey(String key);
  void setByKey(String key, T value);
}

abstract class CaCheMax<T>{
  getKey(String key);
  void setByKey(String key, T value);
}

class FileChche<T> implements CaCheMax<T>{

  @override
  getKey(String key) {
    // TODO: implement getKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
    print("我是文件缓存，把key=${key} value=${value} 写入文件中");
  }
  
}

class MemoryCache<T> implements CaCheMax<T>{

  @override
  getKey(String key) {
    // TODO: implement getKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
    print("我是内存缓存，把key=${key} value=${value} 写入内存中");
  }
  
}

void main (){
  MemoryCache m = new MemoryCache<String>();
  m.setByKey('index', '首页数据');
  m.getKey('index');

   MemoryCache m2 = new MemoryCache<Map>();
    m2.setByKey('index', {"张三": "26"});
}