import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 15,
      floating: true,
      pinned: false,
      backgroundColor: Colors.white,
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/appbar.jpg"),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
          )),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
    );
  }
}
