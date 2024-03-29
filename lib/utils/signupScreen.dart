import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
 import 'package:todo/screens/homeScreen.dart';
import 'package:todo/utils/loginScreen.dart';
import 'package:http/http.dart' as http;

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _signupformKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Sign Up'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _signupformKey,
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Colors.black,
                    controller: usernameController,
                    validator: (usernameController) {
                      if (usernameController == null || usernameController.isEmpty) {
                        return 'Please enter name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      label: Text("Username"),
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    cursorColor: Colors.black,
                    validator: (emailController) {
                      if (emailController == null || emailController.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      label: Text("Email"),
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    controller: passwordController,
                    validator: (passwordController) {
                      if (passwordController == null || passwordController.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      label: Text("Password"),
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    controller: ageController,
                    validator: (ageController) {
                      if (ageController == null || ageController.isEmpty) {
                        return 'Please enter Age';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.child_care,
                        color: Colors.black,
                      ),
                      label: Text("Age"),
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  SizedBox(
                    height: 65,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_signupformKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ), //MaterialPageRoute
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Fill all details'),
                            ));
                          }
                        },
                        child: Text(
                          "Create an account",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                            )))),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(24),
                    child: Center(
                        child: Text.rich(TextSpan(
                            text: "Have an account ?   ",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black45,
                            ),
                            children: <TextSpan>[
                          TextSpan(
                              text: 'Sign In',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                                  );
                                }),
                        ]))),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
