// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Sections/HomePage/FeaturedEventsHome.dart';
import '../Sections/HomePage/HadithSection.dart';
import '../Sections/HomePage/MenuHome.dart';
import '../Sections/HomePage/NavBar.dart';
import '../Sections/HomePage/HomeAppBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          HomeAppBar(),
          SizedBox(height: 30),
          HadithSection(),
          SizedBox(height: 20),
          FeaturedEventsHome(),
          SizedBox(height: 30),
          MenuHome(),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
