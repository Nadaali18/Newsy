import 'package:dio/dio.dart';
import 'package:newsyy/models/news_item.dart';

class NewsServiceApi{
  NewsServiceApi(this.dio);
final Dio dio;

Future<List<NewsItem>> getRecommendedNews() async {
  try{
  dynamic response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=e4543b35387e4f848846fa95e0f40c72');
  Map<String,dynamic> jsonData = response.data;
  List<dynamic> articales = jsonData['articles'];
  List<NewsItem> articalesList = [];
  for (var artical in articales){
     NewsItem articalModel = NewsItem(
      imagePath: artical['urlToImage'],
      title: artical['title'],
      description: artical['description'],
      url: artical['url'],
      );
      articalesList.add(articalModel);
  }
  return articalesList;

} catch(e){
    return[];
}
}
Future<List<NewsItem>> getCategoriesNews({required String category}) async {
  try{
  dynamic response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=e4543b35387e4f848846fa95e0f40c72&category=$category');
  Map<String,dynamic> jsonData = response.data;
  List<dynamic> articales = jsonData['articles'];
  List<NewsItem> articalesList = [];
  for (var artical in articales){
     NewsItem articalModel = NewsItem(
      imagePath: artical['urlToImage'],
      title: artical['title'],
      description: artical['description'],
      url: artical['url'],
      );
      articalesList.add(articalModel);
  }
  return articalesList;

} catch(e){
    return[];
}
}
}
