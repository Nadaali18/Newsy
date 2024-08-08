import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';

class Entertainment extends StatelessWidget {
  const Entertainment({super.key});

  @override
  Widget build(BuildContext context) {
    return const BuildCategoriesScreen(
      color1:Color.fromARGB(255, 79, 14, 91) ,
      text: 'Entertainment News', 
      color: Color.fromARGB(255, 145, 35, 164),
      category: 'entertainment',
      );
  }
}