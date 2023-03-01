import 'package:flutter/material.dart';

import '../../constants.dart';
import 'CheckoutButton.dart';
import 'EventAgenda.dart';

class EventPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Price",
                  style: kSubtitleStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "29",
                      style: kHeadline1Style,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "/person",
                      style: kSubtitle1Style,
                    ),
                  ],
                ),
              ],
            ),
          ),
          CheckoutButton(),
        ],
      ),
    );
  }
}
