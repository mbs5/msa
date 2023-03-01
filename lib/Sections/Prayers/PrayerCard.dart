import 'package:flutter/material.dart';

import '../../constants.dart';

class PrayerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(17, 0, 0, 0),
            blurRadius: 15,
            offset: Offset(5, 5),
          ),
        ],
        border: Border.all(color: Color.fromARGB(40, 158, 158, 158), width: 1),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Fajr",
              style: kHeadline1Style,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "06:00am",
              style: TextStyle(
                color: Color.fromARGB(65, 21, 33, 70),
                fontSize: 20,
                fontFamily: 'Product Sans',
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
