import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/custom_text.dart';
import 'package:newsyy/models/saved_news_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
class CardRecommendedNews extends StatefulWidget {
  const CardRecommendedNews({super.key});

  @override
  State<CardRecommendedNews> createState() => _CardRecommendedNewsState();
}

class _CardRecommendedNewsState extends State<CardRecommendedNews> {
 bool heart=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 400,
        child: Card(
            elevation: 6,
              shadowColor: Colors.black,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                 children:[
                   ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/images/Business.png',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(
                        text: 'Its great to meet this friend i miss him so much and i love banana and chicken its hard really',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                 const  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(
                        text: 'Its great to meet this friend i miss him so much and i love banana and chicken its hard really',
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: IconButton(
                            onPressed: (){
                             heart=!heart;
                            if (heart) {
                             Provider.of<SavedNewsProvider>(context, listen: false).addNewsItem(const CardRecommendedNews());
                           } else {
                           Provider.of<SavedNewsProvider>(context, listen: false).removeNewsItem(const CardRecommendedNews());
                         }
                              
                            }, 
                          icon: heart
                            ?const Icon(Icons.favorite)
                            :const Icon(Icons.favorite_border_rounded) ,color: Colors.purple,),
                        ),
                         IconButton(onPressed: (){
                        Share.share('just nada');
                         }, icon:const Icon(Icons.share),color: Colors.purple,),
                      ],
                    ),
                 ]
                ),
        ),
      ),
    );
  }
}