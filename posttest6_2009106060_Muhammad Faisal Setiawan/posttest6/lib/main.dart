import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6/landing.dart';
import 'package:posttest6/main_page.dart';
import 'package:posttest6/regispage.dart';
import 'package:posttest6/splash.dart';
import 'package:posttest6/switchController.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POSTTEST 5 FAISAL',
      home: const SplashScreen(),
    );
  }
}
