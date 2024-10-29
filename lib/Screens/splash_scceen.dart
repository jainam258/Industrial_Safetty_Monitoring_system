import 'dart:async';
import 'welcome_Screen.dart';
import 'package:flutter/material.dart';
import 'package:industrial_safetty_monitoring/Screens/intro_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, nextscreen);
  }

  nextscreen() {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
        builder: (BuildContext context) => const Introscreen()), (
      Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/images/logo.json"),
      ),
    );
  }
}
