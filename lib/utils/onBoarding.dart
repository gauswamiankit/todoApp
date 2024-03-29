import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/utils/introductionScreen.dart';
import 'package:todo/utils/loginScreen.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List<Introduction> list = [
    Introduction(
      title: 'Organize task easily',
      subTitle: "",
      imageUrl:
          'https://img.freepik.com/free-vector/fill-out-concept-illustration_114360-5540.jpg?t=st=1711705599~exp=1711709199~hmac=4b390e206cb43ec0c1dcc5bc6ac16c5d772113a70ff8434fb7f78c47db6cc5c4&w=740',
    ),
    Introduction(
      title: 'Show achievement',
      subTitle: "",
      imageUrl: 'https://img.freepik.com/free-vector/deadline-time-management-business-concept_107791-4079.jpg?t=st=1711705491~exp=1711709091~hmac=1ec166d7858e1c009a20bd7600aae0c74063dc37dbeefba8f04e035c86e5b735&w=1060',
    ),
    Introduction(
      title: 'Complete your life goal',
      subTitle: "",
      imageUrl: 'https://img.freepik.com/free-vector/deadline-time-management-business-concept_107791-4079.jpg?t=st=1711705491~exp=1711709091~hmac=1ec166d7858e1c009a20bd7600aae0c74063dc37dbeefba8f04e035c86e5b735&w=1060',
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Colors.white,
      introductionList: list,
      onTapSkipButton: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}
