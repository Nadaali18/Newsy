import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';

class General extends StatelessWidget {
  const General({super.key});

  @override
  Widget build(BuildContext context) {
    return const BuildCategoriesScreen(
      color1: Color.fromARGB(255, 79, 16, 12),
      text: 'General News',
      color:  Color.fromARGB(255, 124, 33, 27),
      category: 'general',
      ) ;
  }
}