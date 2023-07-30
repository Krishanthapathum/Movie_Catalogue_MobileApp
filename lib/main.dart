import 'package:flutter/material.dart';
import 'package:movie_catlog_mobileapp/pages/splash_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          highlightColor: const Color.fromRGBO(109, 93, 110, 1)),
      home: const SplashPage(),
    );
  }
}
