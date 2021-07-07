import 'dart:async';

import 'package:flutter/material.dart';
import 'package:patro_mero/view/screen/homeScreen.dart';
import 'package:patro_mero/view/widget/makeText.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), finished);
    super.initState();
  }

  finished() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      body: Center(
        child: makeText(
          "हाम्रो पात्रो",
          textColor: Colors.white,
          fontWeight: FontWeight.bold,
          size: Theme.of(context).textTheme.headline5.fontSize,
        ),
      ),
    );
  }
}
