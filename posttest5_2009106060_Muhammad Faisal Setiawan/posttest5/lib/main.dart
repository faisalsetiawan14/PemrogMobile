import 'package:flutter/material.dart';
import 'package:posttest5/landing.dart';
import 'package:posttest5/main_page.dart';
import 'package:posttest5/regispage.dart';
import 'package:posttest5/splash.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POSTTEST 5 FAISAL',
      home: const SplashScreen(),
    );
  }
}
