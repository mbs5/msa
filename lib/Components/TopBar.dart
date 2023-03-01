import 'package:flutter/material.dart';

import '../constants.dart';

class TopBar extends StatelessWidget {
  Color? color;
  IconData? icon;
  final String centerText;
  final String sideText;

  TopBar(
      {Key? key, this.icon, required this.centerText, required this.sideText})
      : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
          Text(
            this.centerText,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 20,
              fontFamily: 'Product Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(this.sideText),
        ],
      ),
    );
  }
}
