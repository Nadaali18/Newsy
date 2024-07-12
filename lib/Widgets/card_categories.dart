import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:newsyy/Widgets/custom_text.dart';

class CardCategories extends StatelessWidget {
  const CardCategories({super.key,required this.image,required this.text,required this.path});
  final String image;
  final String text;
  final Widget path;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
         onTap: () {
           Get.to(path);
         },
          child: Card(
            elevation: 10,
            shadowColor: Colors.black,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(15)
              ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(image,height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:const Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  child: Center(
                    child: CustomText(
                      text: text,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
