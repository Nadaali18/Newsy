import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/build_categories_screen.dart';


class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return  const BuildCategoriesScreen(text: 'Health News', color: Color.fromARGB(255, 28, 127, 207)) ;
  }
}