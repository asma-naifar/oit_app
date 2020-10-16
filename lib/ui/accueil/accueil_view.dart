import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oit_app/ui/accueil/components/crowdfunding_view.dart';
import 'package:oit_app/ui/accueil/components/custom_appBar_view.dart';
import 'package:oit_app/ui/accueil/components/logoOIT__view.dart';
import 'package:oit_app/ui/accueil/components/searchbar_view.dart';
import 'package:oit_app/ui/accueil/components/title_userIcon_view.dart';

class Accueil extends StatefulWidget {
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                LogoOIT(),
                TitleUserIcon(),
                CustomSearchBar(),
                Crowdfunding(),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return new Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.black45,
                  height: 150.0);
            }),
          )
        ],
      ),
    );
  }
}
