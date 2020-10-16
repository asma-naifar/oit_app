import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oit_app/ui/splashscreens/animations/show_up.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  Widget title = SizedBox(
    width: 243.0,
    height: 33.0,
    child: Text(
      'عمـــادة المـهندسين الـتونسيين',
      style: TextStyle(
        fontFamily: 'Times New Roman',
        fontSize: 16,
        color: const Color(0xff707070),
      ),
      textAlign: TextAlign.center,
    ),
  );

  @override
  void initState() {
    super.initState();
    setValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFecf1ff),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Image.asset("assets/images/logo-oit.png"),
              ),
              SizedBox(
                height: 10,
              ),
              ShowUp(
                child: title,
                delay: 5,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }

  void setValue() async {
    final prefs = await SharedPreferences.getInstance();
    int launchCount = prefs.getInt('counter') ?? 0;
    prefs.setInt('counter', launchCount + 1);
    if (launchCount == 0) {
      await Future.delayed(Duration(seconds: 5));
      Navigator.pushReplacementNamed(context, '/intro');
    } else {
      await Future.delayed(Duration(seconds: 5));
      Navigator.pushReplacementNamed(context, '/accueil');
    }
  }
}
