import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'View/Splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'MVVM weather App With Apis GetX',


      theme: ThemeData( // Fix: Added 'theme' property
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen()
    );
  }
}
