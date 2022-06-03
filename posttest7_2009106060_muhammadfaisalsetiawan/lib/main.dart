import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'landing.dart';
import 'main_page.dart';
import 'regispage.dart';
import 'splash.dart';
import 'switchController.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
