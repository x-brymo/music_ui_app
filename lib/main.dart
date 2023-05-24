import 'package:flutter/material.dart';
import 'package:music_ui_app/musice-app/gui/views/splash&onbaording/splash.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}