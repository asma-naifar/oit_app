import 'package:flutter/cupertino.dart';

class LogoOIT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          SizedBox(
              height: 80,
              child: Image.asset(
                "assets/images/logo-OIT-lavendre.png",
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
              )),
          SizedBox(
            child: Text(
              'عمـــادة المـهندسين الـتونسيين',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 16,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
