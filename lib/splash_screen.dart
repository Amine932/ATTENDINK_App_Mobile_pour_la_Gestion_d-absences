// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splash1 = 'assets/splash/design1.zip';
  // final splash2 = 'assets/splash/design2.zip';
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    var duration = const Duration(milliseconds: 2800);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(
      context,
      '/UserChoice',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Content(),
    );
  }

  Widget Content() {
    return Center(
      child: SizedBox(
        height: double.infinity,
        child: Lottie.asset(
          splash1,
        ),
      ),
    );
  }
}
