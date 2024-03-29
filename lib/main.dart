import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/screens/homeScreen.dart';

import 'utils/loginScreen.dart';
import 'utils/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A  T O D O',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
          fontFamily: 'Weather',
          scaffoldBackgroundColor: Color(0xFFE8EAED)),
      routes: {
         "/": (context) => SplashScreen(),
      },
    );
  }
}
