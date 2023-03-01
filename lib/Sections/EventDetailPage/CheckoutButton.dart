import 'package:flutter/material.dart';

import '../../constants.dart';

class CheckoutButton extends StatefulWidget {
  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20,
      ),
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          color: kMainPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Reserve",
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 15,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
