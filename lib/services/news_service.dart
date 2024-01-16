import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  getNews() async {
    // String url = '';
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=3c88955c487e4d9db668f011dd85e737&category=general');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articls = jsonData['articles'];
    print(articls);
  }
}
