import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/morning.dart';
import 'package:flutter_application_1/screens/mosque.dart';
import 'package:flutter_application_1/screens/night_azkar.dart';
import 'package:flutter_application_1/screens/pray.dart';
import 'package:flutter_application_1/screens/sleeping.dart';
import 'package:flutter_application_1/screens/splash_screen.dart';
import 'package:flutter_application_1/screens/wakingUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Azakr App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/morning': (context) => MorningAzkar(),
        '/night': (context) => NightAzkar(),
        '/mosque': (context) => Mosque(),
        '/get_up': (context) => WakingUp(),
        '/sleeping': (context) => Sleeping(),
        '/praying': (context) => Praying(),
      },
    );
  }
}
