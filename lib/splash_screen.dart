import 'dart:async';
import 'package:get/get.dart';

import 'temporary_home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int duration = 5;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: duration),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/ssnn.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
