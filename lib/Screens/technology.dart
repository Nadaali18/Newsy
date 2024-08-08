import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';

class Technology extends StatelessWidget {
  const Technology({super.key});

  @override
  Widget build(BuildContext context) {
    return  const BuildCategoriesScreen(
      color1:Color.fromARGB(239, 120, 109, 17),
      text: 'Technology News', 
      color: Color.fromARGB(240, 196, 180, 37),
      category: 'technology',
      ) ;
  }
}