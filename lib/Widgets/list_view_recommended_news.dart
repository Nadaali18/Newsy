import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/card_news.dart';
import 'package:newsyy/models/news_item.dart';


// ignore: must_be_immutable
class ListViewRecommendedNews extends StatelessWidget {
  ListViewRecommendedNews({super.key,required this.articles});
 
  List<NewsItem> articles=[];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
             physics:const NeverScrollableScrollPhysics(),
             shrinkWrap: true,
              itemCount:articles.length,
              itemBuilder: (context, index) =>CardNews(newsItem: articles[index],),
            );
  }
}