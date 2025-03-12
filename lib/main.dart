import 'package:flutter/material.dart';
import 'package:shopywell/screens/get_started_page.dart';
import 'package:shopywell/screens/onboading/choose_page_indicator.dart';
import 'package:shopywell/screens/onboading/create_an_account_page.dart';
import 'package:shopywell/screens/onboading/forgott_password.dart';
import 'package:shopywell/screens/onboading/sign_in_page.dart';
import 'package:shopywell/screens/onboading/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SplashScreen(),
    );
  }
}


