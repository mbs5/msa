import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:msa/Components/LoginTextField.dart';
import 'package:msa/constants.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback showRegisterScreen;
  const LoginScreen({super.key, required this.showRegisterScreen});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
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
                      padding: EdgeInsets.only(left: 30, top: 100),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.65,
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
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Welcome back!",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Product Sans',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sign in with your email and password or register to continue",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Product Sans',
                              color: Color.fromARGB(130, 255, 255, 255),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text Field (Email)
                              LoginTextField(
                                controller: emailController,
                                hintText: "Email address",
                                obscureText: false,
                              ),

                              SizedBox(height: 15),
                              // Text Field (Password)
                              LoginTextField(
                                controller: passwordController,
                                hintText: "Password",
                                obscureText: true,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Forgot password?",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 198, 150, 19),
                                  fontFamily: 'Product Sans',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: signUserIn,
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
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Not a member? signup
                  Text(
                    "Not a member?",
                    style: TextStyle(
                      color: Color(0xFF152146),
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
                      "Sign up",
                      style: TextStyle(
                        color: Color(0xFF8743FF),
                        fontFamily: 'Product Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
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
