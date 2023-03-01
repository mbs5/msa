import 'package:flutter/material.dart';

import '../../Screens/LoginScreen.dart';
import '../../Screens/RegisterScreen.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage(
      {super.key, required Null Function() showRegisterScreen});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  // initially show login page
  bool showLoginPage = true;

// toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        showRegisterScreen: togglePages,
      );
    } else {
      return RegisterScreen(
        showRegisterScreen: togglePages,
      );
    }
  }
}
