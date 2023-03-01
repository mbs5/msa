import 'package:flutter/material.dart';

import '../Components/TopBar.dart';
import '../Sections/Prayers/PrayersBody.dart';

class PrayersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: (() {
                Navigator.pop(context);
              }),
              child: TopBar(
                centerText: 'Prayers',
                sideText: '',
              ),
            ),
            PrayersBody(),
          ],
        ),
      ),
    );
  }
}
