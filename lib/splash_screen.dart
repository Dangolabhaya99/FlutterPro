import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trendtrove/login_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Center(child: Text('TrendTrove', style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),)),
      ),
    );
  }
}