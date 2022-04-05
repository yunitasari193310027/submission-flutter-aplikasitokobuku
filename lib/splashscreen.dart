import 'package:flutter/material.dart';
import 'dart:async';
import 'package:submission_yunita/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
  var duration = const Duration(seconds: 5);
  return Timer(duration, () {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MyHomePage()));
  });
}
@override
void initState() {
  super.initState();
  startSplashScreen();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xFFCC8053),
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Center(
        child: Image.asset(
          "assets/splash.png",
          width: 200.0,
          height: 100.0,
          fit: BoxFit.contain,
        ),
      ),
      SizedBox(
        height: 24.0,
      ),
      Text(
        "BookShoope",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
    ],
  ),
  );
 }
}
