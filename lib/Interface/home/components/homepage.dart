import 'package:flutter/material.dart';
//import 'package:bus_tracker/constants.dart';

import 'header_with_seachbox.dart';
import 'body.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Know Your Bus Details", press: () {}),
          RecomendsPlants(),
          //TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          //FeaturedPlants(),
          //SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
