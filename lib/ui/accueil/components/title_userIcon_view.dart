import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleUserIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Ordre des Ingénieurs Tunisiens',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.2,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Nouveautés',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            child: Container(
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset('assets/images/userImage.png'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
