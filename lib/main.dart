import 'package:flutter/material.dart';
import 'package:msa/Screens/HomeScreen.dart';
import 'package:msa/Screens/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:msa/Sections/Login/AuthPage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      home: AuthPage(),
    ),
  );
}
