import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';
import 'package:plant_app/screens/details/gmap.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/dbus.png",
            title: "DISTRICT BUSES",
            country: "Tamilnadu",
            press: () {
              /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );*/
            },
          ),
          RecomendPlantCard(
            image: "assets/images/lbus.png",
            title: "CITY BUSES",
            country: "Madurai",
            press: () {},
          ),
          RecomendPlantCard(
            image: "assets/images/gmap.png",
            title: "Track live location",
            country: "Tamilnadu",
            press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GMap(),
                ),
              );},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.9,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  /*Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )*/
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
