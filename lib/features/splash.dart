import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterspine/features/homepage.dart';
import '../main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 4), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF013133),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: height,
          width: width ,
          child: Image.asset(
            'assets/images/Splash.png',
          ),
        ),
      ),
    );
  }
}
