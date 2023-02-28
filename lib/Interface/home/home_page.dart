import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bus_tracker/Interface/home/components/my_bottom_nav_bar.dart';
import 'package:bus_tracker/Interface/home/components/homepage.dart';
import 'package:bus_tracker/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
