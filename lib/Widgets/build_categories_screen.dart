import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/appbar.dart';
import 'package:newsyy/Widgets/custom_text.dart';
import 'package:newsyy/Widgets/list_view_recommended_news.dart';

class BuildCategoriesScreen extends StatefulWidget {
  const BuildCategoriesScreen({super.key,required this.text,required this.color,});
final String text;
final Color color;
  @override
  State<BuildCategoriesScreen> createState() => _BuildCategoriesScreenState();
}

class _BuildCategoriesScreenState extends State<BuildCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(text: 'Newsy',color: widget.color,),
       body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(
               text: widget.text,
               color: widget.color,
               fontSize: 25,
               fontWeight: FontWeight.bold,
               fontFamily: 'Pacifico',
            ),
          ),
          const ListViewRecommendedNews(),
        ],
      ),
      );
  }
}