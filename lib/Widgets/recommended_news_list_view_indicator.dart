
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/list_view_news.dart';
import 'package:newsyy/models/news_item.dart';
import 'package:newsyy/services/news_services_api.dart';

class RecommendedNewsListViewBuilder extends StatefulWidget {
  const RecommendedNewsListViewBuilder({
    super.key,
  });

  @override
  State<RecommendedNewsListViewBuilder> createState() => _RecommendedNewsListViewBuilderState();
}

class _RecommendedNewsListViewBuilderState extends State<RecommendedNewsListViewBuilder> {

var future;
@override
void initState() {
  super.initState();
  future = NewsServiceApi(Dio()).getRecommendedNews();
}

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsItem>>(
      future: future,
      builder:(context,snapshot){
      if (snapshot.hasData) {
        return ListViewNews(articles: snapshot.data??[],);
      }else if(snapshot.hasError){
        return const Center(child: Text('oops there was an error now try again later sweetie'));
      }else{
        return const Center(child: CircularProgressIndicator());
      }
        }
      );
  }
}