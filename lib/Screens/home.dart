import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/appbar.dart';
import 'package:newsyy/Widgets/custom_text.dart';
import 'package:newsyy/Widgets/list_view_categories.dart';
import 'package:newsyy/Widgets/recommended_news_list_view_indicator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppBar(text: 'Newsy',color:  Color.fromARGB(255, 91, 6, 106)),
        
      body: ListView(
          children:[
            Padding(
               padding:const EdgeInsets.all(10),
               child: CustomText(
                text: 'Categories',
                color: Colors.purple[300],
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
                       ),
             ),

           const ListViewCategories(),

          
            Padding(
               padding:const EdgeInsets.all(10),
               child: CustomText(
                text: 'Recommended News',
                color: Colors.purple[300],
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
             ),
        const  RecommendedNewsListViewBuilder(), 
          ],
        ),
    );
  }
}
