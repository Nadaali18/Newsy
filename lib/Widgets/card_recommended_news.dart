import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/custom_text.dart';
import 'package:newsyy/models/news_item.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
class CardRecommendedNews extends StatefulWidget {
  const CardRecommendedNews({super.key,required this.newsItem});

final NewsItem newsItem;

  @override
  State<CardRecommendedNews> createState() => _CardRecommendedNewsState();
}

class _CardRecommendedNewsState extends State<CardRecommendedNews> {


Future<void> _launchUrl() async {
    final Uri url = Uri.parse(widget.newsItem.url);
      await canLaunchUrl(url);
      await launchUrl(url);
    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: _launchUrl,
        child: SizedBox(
          height: 410,
          child: Card(
              elevation: 6,
                shadowColor: Colors.black,
                shape: BeveledRectangleBorder(
                 borderRadius: BorderRadius.circular(15)
                ),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                     ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                        child: Image.network(
                          widget.newsItem.imagePath??'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                     Padding(
                        padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 2),
                        child: CustomText(
                          text: widget.newsItem.title,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    Padding(
                          padding: const EdgeInsets.only(top: 3,left: 8,right: 8,bottom: 8),
                        child: CustomText(
                          text: widget.newsItem.description,
                          color: Colors.grey,
                        ),
                      ),
                    const  SizedBox(height: 5,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: ()async{
                                final urlReview=widget.newsItem.url;
                                  Share.share('Enjoy reading this news it is really great!\n$urlReview');
                                }, 
                              icon:const Icon(Icons.share),color: Colors.purple,),
                          ),
                        ],
                      ),
                   ]
                  ),
          ),
        ),
      ),
    );
  }
}