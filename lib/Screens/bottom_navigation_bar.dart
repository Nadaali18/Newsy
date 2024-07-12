import 'package:flutter/material.dart';
import 'package:newsyy/Screens/home.dart';
import 'package:newsyy/Screens/saved.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int pageIndex = 0; 
  final pages = [ 
    const Home(), 
    const Saved(), 
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: ClipPath(
        clipper: CircularClipper(),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.purple[300]!.withOpacity(0.6),
          currentIndex: pageIndex,
          selectedItemColor: const Color.fromARGB(255, 91, 6, 106),
          unselectedItemColor: Colors.purple[500],
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: pageIndex == 0 
                ? const Icon(Icons.home)
                : const Icon(Icons.home_outlined,),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: pageIndex == 1
                ? const Icon(Icons.favorite) 
                : const Icon(Icons.favorite_border_rounded,),
              label: "Saved"
            ),
          ],
        ),
      ),
    );
  }
}

class CircularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 20);
    path.quadraticBezierTo(0, 0, 20, 0);
    path.lineTo(size.width - 20, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
