import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:shopywell/screens/bottom_nav_screen.dart';
import 'package:shopywell/screens/home_page.dart';

import 'package:shopywell/screens/onboading/splash_screen.dart';
import 'package:shopywell/screens/profile_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
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
      debugShowCheckedModeBanner: false,

      builder: DevicePreview.appBuilder,
      home: SplashScreen(),
    );
  }
}
