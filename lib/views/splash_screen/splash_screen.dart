import 'package:api12/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 5000,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
                  height: 230,
                  padding: const EdgeInsets.all(32),
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child:  Image.asset('assets/images/splash_screen/WhatToDo_.png'),
                ),
        ],
      ),
      backgroundColor: const Color(0xFFB45CFF),
      nextScreen: MyHomePage(),
      
      splashIconSize: 360,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
