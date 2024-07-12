import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/card_recommended_news.dart';

class ListViewRecommendedNews extends StatefulWidget {
  const ListViewRecommendedNews({super.key});

  @override
  State<ListViewRecommendedNews> createState() => _ListViewRecommendedNewsState();
}

class _ListViewRecommendedNewsState extends State<ListViewRecommendedNews> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
             physics:const NeverScrollableScrollPhysics(),
             shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) =>const CardRecommendedNews(),
            );
  }
}