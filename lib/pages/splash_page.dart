import 'package:flutter/material.dart';
import 'package:movie_catlog_mobileapp/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Wait for 5 seconds and then navigate to the main page
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ), // Replace 'MyApp' with your main app widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(),
            Padding(
              padding: EdgeInsets.only(
                  top: devHeight * 0.33, bottom: devHeight * 0.33),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/logo.png'),
                    height: 65,
                  ),
                  SizedBox(
                    width: devWidth * 0.7,
                    child: LinearProgressIndicator(
                      color: Theme.of(context).highlightColor,
                    ),
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(
                  top: (devHeight * 0.33) / 2,
                ),
                child: const Column(
                  children: [
                    Text(
                      'Developed by',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Krishantha Pathum',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
