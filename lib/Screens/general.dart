import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';

class General extends StatelessWidget {
  const General({super.key});

  @override
  Widget build(BuildContext context) {
    return const BuildCategoriesScreen(text: 'General News', color: const Color.fromARGB(255, 124, 33, 27)) ;
  }
}