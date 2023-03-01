import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:msa/Screens/HomeScreen.dart';
import 'package:msa/Screens/LoginScreen.dart';

import 'LoginOrRegisterPage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User is logged in
          if (snapshot.hasData) {
            return HomeScreen();
          }
          // User is NOT logged in
          else {
            return LoginOrRegisterPage(
              showRegisterScreen: () {},
            );
          }
        },
      ),
    );
  }
}
