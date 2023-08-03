import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/HomeScreen.dart';
import 'HomeScreen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder:
            (context) =>
            LoginPage()
        )
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/emojilaugh.gif'),
      ),
    );
  }
}
