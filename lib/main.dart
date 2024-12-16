import 'package:flutter/material.dart';
import 'package:live_wired_walkthrough/onboardingScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: OnBoardingScreen());
  }
}
