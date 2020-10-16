import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oit_app/ui/splashscreens/splashscreen1_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 50,
        width: 50,
        child: CustomSplash(
          imagePath: "assets/images/logo-oit.png",
          backGroundColor: Color(0xFFecf1ff),
          animationEffect: 'zoom-in',
          logoSize: 20,
          home: SplashScreen1(),
          //customFunction: duringSplash,
          duration: 3500,
          type: CustomSplashType.StaticDuration,
          //outputAndHome: op,
        ),
      ),
    );
  }
}
