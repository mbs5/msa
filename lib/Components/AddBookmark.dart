import 'package:flutter/material.dart';

import '../constants.dart';

class EventBookmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 32,
      width: 32,
      child: Icon(
        Icons.bookmark_outline,
        color: kPrimaryColor,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
