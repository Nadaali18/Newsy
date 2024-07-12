import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';

class Technology extends StatelessWidget {
  const Technology({super.key});

  @override
  Widget build(BuildContext context) {
    return  const BuildCategoriesScreen(text: 'Technology News', color: Color.fromARGB(240, 196, 180, 37)) ;
  }
}