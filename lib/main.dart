import 'package:flutter/material.dart';
import 'package:live_srm/pages/home_page.dart'; // Import the home page
import 'package:live_srm/pages/splash_page.dart'; // Import the splash page
import 'package:live_srm/components/hidden_drawer.dart'; // Import the hidden drawer
import 'package:live_srm/themes/light_mode.dart'; // Import the bottom navigation bar


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(), // Start with the splash screen
      theme: lightMode,
    );
  }
}
