import 'package:flutter/material.dart';

import '../constants.dart';

class SearchFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, 12),
              blurRadius: 16.0,
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: kPrimaryColor,
                size: 20,
              ),
              border: InputBorder.none,
              hintText: "Search for Events",
              hintStyle: kSearchPlaceholderStyle),
          style: kSearchTextStyle,
          onChanged: (newText) {
            print(newText);
          },
        ),
      ),
    );
  }
}
