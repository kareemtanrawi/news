import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews() async {
    // String url = '';
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=general');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articls = jsonData['articles'];
    // print(articls);
    List<ArticleModel> articlesList = [];
    for (var article in articls) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articlesList.add(articleModel);
    }
    // print(articlesList);
    return articlesList;
  }
}
