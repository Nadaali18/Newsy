import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:newsyy/Screens/bottom_navigation_bar.dart';
import 'package:newsyy/models/saved_news_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( 
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SavedNewsProvider()),
      ],
      child: const MyApp(),));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return const GetMaterialApp(
       debugShowCheckedModeBanner: false,
       home: CustomBottomNavigationBar(),
    );
  }
}
