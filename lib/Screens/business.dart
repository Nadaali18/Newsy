import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return  const BuildCategoriesScreen(
      color1:Color.fromARGB(255, 193, 43, 93),
      text: 'Business News', 
      color: Color.fromARGB(255, 229, 89, 136),
      category: 'business',
      );
  }
}