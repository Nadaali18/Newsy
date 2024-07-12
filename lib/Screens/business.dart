import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return  const BuildCategoriesScreen(
      text: 'Business News', 
      color: Color.fromARGB(255, 229, 89, 136),
      );
  }
}