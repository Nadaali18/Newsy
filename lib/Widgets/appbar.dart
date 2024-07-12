import 'package:flutter/material.dart';
import 'package:newsyy/Widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key,required this.text,required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        title: CustomText(
          text: text,
          color: color,
          fontSize: 27,
          fontWeight: FontWeight.bold,
          fontFamily: 'Pacifico',
        ),
        centerTitle: true,
      );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
