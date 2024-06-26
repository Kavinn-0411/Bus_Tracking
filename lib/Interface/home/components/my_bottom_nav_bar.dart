import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import '/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            //icon: SvgPicture.asset("assets/icons/flower.svg"),
            icon: const Icon(Icons.home),
            //highlightColor: Color.fromARGB(255, 58, 19, 200),
            onPressed: () {},
          ),
          IconButton(
            //icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            icon: const Icon(Icons.repeat),
            onPressed: () {},
          ),
          IconButton(
            //icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
