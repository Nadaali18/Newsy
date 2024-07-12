import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';

class Science extends StatelessWidget {
  const Science({super.key});

  @override
  Widget build(BuildContext context) {
    return  const BuildCategoriesScreen(text: 'Science News', color:  Color.fromARGB(255, 167, 66, 3)) ;
  }
}