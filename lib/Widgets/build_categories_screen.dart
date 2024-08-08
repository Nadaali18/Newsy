import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/appbar.dart';
import 'package:newsyy/Widgets/category_list_view_indicator.dart';
import 'package:newsyy/Widgets/custom_text.dart';

class BuildCategoriesScreen extends StatefulWidget {
  const BuildCategoriesScreen({super.key,required this.text,required this.color,required this.category,required this.color1});
final String text;
final Color color;
final Color color1;
final String category;
  @override
  State<BuildCategoriesScreen> createState() => _BuildCategoriesScreenState();
}

class _BuildCategoriesScreenState extends State<BuildCategoriesScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(text: 'Newsy',color: widget.color1,),
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
          CategoriesNewsListViewBuilder(category: widget.category,),
        ],
      ),
      );
  }
}