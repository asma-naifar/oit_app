import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splashscreen1 extends StatelessWidget {
  Splashscreen1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafcfd),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(23.0, 164.0),
            child: Container(
              width: 329.0,
              height: 374.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(23.0, 601.0),
            child:
                // Adobe XD layer: 'Start' (group)
                SizedBox(
              width: 329.0,
              height: 49.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 329.0, 49.0),
                    size: Size(329.0, 49.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Rectangle 119' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: const Color(0xd66e98bc),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(106.0, 19.0, 118.0, 11.0),
                    size: Size(329.0, 49.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Commencer' (text)
                        Text(
                      'Commencer l\'expérience',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 193.0),
            child: Transform.rotate(
              angle: 0.0,
              child:
                  // Adobe XD layer: 'undraw_connected_8w…' (shape)
                  Container(
                width: 269.0,
                height: 216.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(
                        'assets/images/undraw_connected_8wvi.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(120.0, 40.0),
            child:
                // Adobe XD layer: 'logo-OIT' (shape)
                Container(
              width: 135.0,
              height: 76.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo-OIT.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(169.0, 505.0),
            child:
                // Adobe XD layer: 'Pagination' (group)
                SizedBox(
              width: 38.0,
              height: 6.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 6.0, 6.0),
                    size: Size(38.0, 6.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Ellipse 8' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff85a8c6),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.0, 0.0, 6.0, 6.0),
                    size: Size(38.0, 6.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Ellipse 9' (shape)
                        SvgPicture.string(
                      _svg_kcem6o,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.0, 0.0, 6.0, 6.0),
                    size: Size(38.0, 6.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Ellipse 10' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xa8b8cdde),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_kcem6o =
    '<svg viewBox="16.5 0.0 6.0 6.0" ><path transform="translate(16.49, 0.0)" d="M 3 0 C 4.656854152679443 0 6 1.343145847320557 6 3 C 6 4.656854152679443 4.656854152679443 6 3 6 C 1.343145847320557 6 0 4.656854152679443 0 3 C 0 1.343145847320557 1.343145847320557 0 3 0 Z" fill="#85a8c6" fill-opacity="0.57" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
