import 'package:flutter/material.dart';
import 'package:trendtrove/models/cart.dart';
import 'package:provider/provider.dart';
import 'package:trendtrove/splash_screen.dart';

void main(){
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  LoginApp({super.key});
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
    ),
    );
  }
}