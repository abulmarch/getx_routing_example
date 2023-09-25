
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home_page.dart';
import 'pages/page_four.dart';
import 'pages/page_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'DBestech',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/course-page', page: () => const PageThree(),),
        GetPage(name: '/more-page/:data', page: ()=> const PageFour())
      ],
    );
  }
}

// Home Screen

// Page One

// Page Two

// Page Three

// Page Four
