import 'package:flutter/material.dart';
import 'package:newsyy/Screens/business.dart';
import 'package:newsyy/Screens/entertainment.dart';
import 'package:newsyy/Screens/general.dart';
import 'package:newsyy/Screens/health.dart';
import 'package:newsyy/Screens/science.dart';
import 'package:newsyy/Screens/sports.dart';
import 'package:newsyy/Screens/technology.dart';
import 'package:newsyy/Widgets/card_categories.dart';

class ListViewCategories extends StatefulWidget {
  const ListViewCategories({super.key});

  @override
  State<ListViewCategories> createState() => _ListViewCategoriesState();
}

class _ListViewCategoriesState extends State<ListViewCategories> {
   List<CardCategories> objects = const [
    CardCategories(image: 'assets/images/general.png', text: 'General',path: General(),),
    CardCategories(image: 'assets/images/Business.png', text: 'Business',path: Business(),),
    CardCategories(image: 'assets/images/entertainment.png', text: 'Entertainment',path: Entertainment(),),
    CardCategories(image: 'assets/images/health.png', text: 'Health',path: Health(),),
    CardCategories(image: 'assets/images/Science.png', text: 'Science',path: Science(),),
    CardCategories(image: 'assets/images/sports.png', text: 'Sports',path: Sports(),),
    CardCategories(image: 'assets/images/technology.png', text: 'Technology',path: Technology(),),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: objects.length,
              itemBuilder: (context, index) => objects[index],
            ),
    );
  }
}