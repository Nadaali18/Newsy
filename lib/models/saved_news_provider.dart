import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/card_recommended_news.dart';


class SavedNewsProvider with ChangeNotifier {
  final List<Widget> _savedNews = [];

  List<Widget> get savedNews => _savedNews;

  void addNewsItem(CardRecommendedNews newsItem) {
    _savedNews.add(newsItem);
    notifyListeners();
  }

  void removeNewsItem(CardRecommendedNews newsItem) {
    _savedNews.remove(newsItem);
    notifyListeners();
  }
}
