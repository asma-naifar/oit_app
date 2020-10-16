import 'package:flutter/material.dart';
import 'package:oit_app/ui/accueil/accueil_view.dart';
import 'package:oit_app/ui/splashscreens/introscreens_view.dart';
import 'package:oit_app/ui/splashscreens/splashscreen0_view.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      themeMode: ThemeMode.light,
      routes: {
        "/accueil": (_) => new Accueil(),
        "/intro": (_) => new IntroScreens(),
      },
    );
  }
}


