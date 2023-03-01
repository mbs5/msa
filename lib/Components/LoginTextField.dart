import 'package:flutter/material.dart';

import '../constants.dart';

class LoginTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const LoginTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 65,
      decoration: BoxDecoration(
        color: kTextFieldColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              right: 16.0,
              left: 16.0,
            ),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: kLoginInputTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HalfTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const HalfTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      height: 65,
      decoration: BoxDecoration(
        color: Color(0XFF30276a),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              right: 16.0,
              left: 16.0,
            ),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: kLoginInputTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
