import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
 import 'package:todo/screens/homeScreen.dart';
import 'package:todo/utils/signupScreen.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginformKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // demogetId();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Login'),
        ),
        body: Form(
          key: _loginformKey,
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  cursorColor: Colors.black,
                  controller: emailController,
                  validator: (emailController) {
                    if (emailController == null || emailController.isEmpty) {
                      return 'Please enter email id';
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
                  controller: passwordController,
                  cursorColor: Colors.black,
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
                  height: size.height * 0.05,
                ),
                SizedBox(
                  height: 65,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_loginformKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ), //MaterialPageRoute
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Add random email and pass to login'),
                          ));
                        }
                      },
                      child: Text(
                        "Login",
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
                          text: "Dont't have an account ?   ",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black45,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                                );
                              }),
                      ]))),
                ),
              ],
            ),
          ),
        ));
  }
}
