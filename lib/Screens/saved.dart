import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/appbar.dart';
import 'package:newsyy/Widgets/card_recommended_news.dart';
import 'package:newsyy/models/saved_news_provider.dart';
import 'package:provider/provider.dart';


class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    final savedNews = Provider.of<SavedNewsProvider>(context).savedNews;

    return Scaffold(
      appBar: const CustomAppBar(text: 'Saved News',color:  Color.fromARGB(255, 91, 6, 106)),
      body: ListView.builder(
        itemCount: savedNews.length,
        itemBuilder: (context, index) {
          return const CardRecommendedNews();
                
  }),
        
          );
        }
      }

