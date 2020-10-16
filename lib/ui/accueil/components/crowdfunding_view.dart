import 'package:flutter/material.dart';

class Crowdfunding extends StatefulWidget {
  @override
  _CrowdfundingState createState() => _CrowdfundingState();
}

class _CrowdfundingState extends State<Crowdfunding> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(left: 18, right: 18, top: 16, bottom: 18),
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF7D74B5), Color(0xFFD580B6)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topRight: Radius.circular(68.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xFF3A5160).withOpacity(0.6),
                    offset: Offset(1.1, 1.1),
                    blurRadius: 10.0),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: Text(
                      "Qu'est-ce que le Crowdfunding ?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        letterSpacing: 0.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 15, right: 50),
                    child: Text(
                      "Vous êtes à la recherche de financements pour votre projet ?\nIl est devenu possible aujourd'hui, grâce à...",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        letterSpacing: 0.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: SizedBox(
                              height: 25,
                              child: Image.asset(
                                  "assets/images/logo-OIT-white.png")),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Icon(Icons.arrow_forward_ios, size: 20,),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
