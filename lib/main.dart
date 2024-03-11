import 'package:flutter/material.dart';
import 'package:task/screens/welcome/welome_screen.dart';
import 'package:task/screens/splash/splash_screen.dart';
import 'package:task/theme/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter PDF Reader',
      theme: ThemeData(
        primaryColor: primaryColorED6E1B,
        useMaterial3: true,
      ),
      home: const SplashScreen(child: WelcomeScreen(),),
    );
  }
}

