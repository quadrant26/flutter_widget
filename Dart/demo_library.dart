import 'dart:io';
import 'dart:convert';

void main() async{
  var result = await _getDataFormZhihuApi();
  print(result);
}

// api 接口 http://news-at.zhihu.com/api/3/stories/latest
_getDataFormZhihuApi () async {
  // 1. 创建 HttpClient 对象
  var httpClient = new HttpClient();
  // 2. 创建 Uri 对象
  var uri = new Uri.http('news-at.zhihu.com', 'api/3/stories/latest');
  // 3. 发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  // 4. 关闭请求，等待响应
  var response = await request.close();
  // 5. 解析数据
  return await response.transform(utf8.decoder).join();
}