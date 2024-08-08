import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';


class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return  const BuildCategoriesScreen(
      color1:Color.fromARGB(255, 24, 77, 25) ,
      text: 'Sports News', 
      color: Color.fromARGB(255, 60, 150, 63),
      category: 'sports',
      ) ;
  }
}