import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truco_points/homeScreen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(
        const Duration(
          seconds: 3,
        ), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => const HomeScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2B9EB3),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage("assets/images/truco.png"),
              fit: BoxFit.cover,
              height: 250,
              width: 250,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Truco Points",
                style: GoogleFonts.rancho(
                    textStyle: const TextStyle(
                        fontSize: 30,
                        color: Colors.black54,
                        decoration: TextDecoration.none,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
