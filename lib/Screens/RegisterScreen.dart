import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:msa/Sections/Login/DropDownGender.dart';
import 'package:msa/Components/LoginTextField.dart';
import 'package:msa/Sections/Login/DropDownSchool.dart';
import 'package:msa/constants.dart';

import '../Sections/Login/DropDownEthnicity.dart';

class RegisterScreen extends StatefulWidget {
  final VoidCallback showRegisterScreen;
  const RegisterScreen({super.key, required this.showRegisterScreen});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fnController = TextEditingController();
  final lnController = TextEditingController();
  final genderController = TextEditingController();
  final ethnicityController = TextEditingController();
  final schoolController = TextEditingController();

// Sign User up
  void signUserUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 30, top: 60),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.8,
                      decoration: BoxDecoration(
                        color: Color(0XFF201b5b),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Create Account",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Product Sans',
                              color: Color.fromARGB(130, 255, 255, 255),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              // First Name
                              HalfTextField(
                                  controller: fnController,
                                  hintText: "First Name",
                                  obscureText: false),

                              SizedBox(
                                width: 15,
                              ),
                              // Last Name
                              HalfTextField(
                                  controller: lnController,
                                  hintText: "Last Name",
                                  obscureText: false),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              // Gender
                              DropDownGender(
                                controller: genderController,
                                justText: '',
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              DropDownEthnicity(
                                controller: ethnicityController,
                                justText: '',
                              ),
                              // Ethnicity
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),

                          SizedBox(
                            height: 15,
                          ),

                          // Email
                          LoginTextField(
                            controller: emailController,
                            hintText: "Email address",
                            obscureText: false,
                          ),
                          SizedBox(height: 15),
                          // Password
                          LoginTextField(
                            controller: passwordController,
                            hintText: "Password",
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              // Already have an account? Login Now
                              Text(
                                "already have an account?",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontFamily: 'Product Sans',
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: widget.showRegisterScreen,
                                child: Text(
                                  "Login now",
                                  style: TextStyle(
                                    color: Color(0xFF8743FF),
                                    fontFamily: 'Product Sans',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: signUserUp,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0xFF8743FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
