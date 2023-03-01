import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(),
      child: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Color(0xFF152146),
        animationDuration: Duration(milliseconds: 150),
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(Icons.access_time_filled, color: Colors.white),
          Icon(Icons.calendar_month, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.archive, color: Colors.white),
        ],
        height: 60,
      ),
    );
  }
}
