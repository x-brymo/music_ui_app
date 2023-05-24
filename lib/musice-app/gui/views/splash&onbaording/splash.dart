import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            "asset/image/background.png",
            width: size.width,
            height: size.height,
          ),
          Expanded(
              child: Center(
                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                Image.asset("asset/image/logo-app.png"),
                Text(
                  "Song Chimp",
                  style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
                Text("Let the Music Speak!",
                    style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.red))
                          ],
                        ),
              ))
        ],
      ),
    );
  }
}
