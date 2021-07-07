import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patro_mero/view/screen/splashScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hamro Patro",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
