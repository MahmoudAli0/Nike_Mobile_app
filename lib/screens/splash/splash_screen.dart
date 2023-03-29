

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoes_app/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 4),(){
     Navigator.pushNamed(context, 'welcome');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/nike.png'),
              ),
              SizedBox(height:20),
              AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText('Nike Shoses ',textStyle:  TextStyle(
                    letterSpacing: 8,
                    color: PRIMARY_COLOR,
                    fontSize: 28,
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}