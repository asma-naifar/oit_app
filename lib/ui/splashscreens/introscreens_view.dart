import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:oit_app/ui/accueil/accueil_view.dart';

class IntroScreens extends StatefulWidget {
  @override
  _IntroScreensState createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => Accueil()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/images/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Color(0xFF707070));
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Rester Connecté\nابق على اتصال\nStay connected",
          image: _buildImage('splashscreen1'),
          body:
              "Trouver toutes les nouvelles actualités de l'Ordre des Ingénieurs Tunisiens OIT et du monde de l'ingénierie",
          decoration: PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
            bodyTextStyle: bodyStyle,
            descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            pageColor: Colors.white,
            imagePadding: EdgeInsets.zero,
          ),
        ),
        PageViewModel(
          title: "Exprimez-vous !",
          body:
              "Vous pouvez discuter avec des ingénieurs de différentes spécialités",
          image: _buildImage('splashscreen2'),
          decoration: PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
            bodyTextStyle: bodyStyle,
            descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            pageColor: Colors.white,
            imagePadding: EdgeInsets.zero,
          ),
        ),
        PageViewModel(
          title: "Profiter des espaces d'échange",
          body:
              "Contacter les entreprises et les sociétés civiles directement et découvrir toutes les opportunités actuelles",
          image: _buildImage('splashscreen3'),
          decoration: PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
            bodyTextStyle: bodyStyle,
            descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            pageColor: Colors.white,
            imagePadding: EdgeInsets.zero,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Terminer', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xFF6E99BD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
