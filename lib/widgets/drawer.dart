import 'package:flutter/material.dart';
import 'package:myportfolio/helpers/responsive.dart';
import 'package:myportfolio/views/content.dart';
import 'package:myportfolio/views/design.dart';
import 'package:myportfolio/views/mobile.dart';
import 'package:myportfolio/views/port.dart';
import 'package:myportfolio/views/reviews.dart';

class PortDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerTiles(
              text: 'Mobile',
              icon: Icons.mobile_friendly,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MobilePage()));
              },
            ),
            DrawerTiles(
              text: 'UI/UX Design',
              icon: Icons.design_services,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DesignPage()));
              },
            ),
            DrawerTiles(
              text: 'Interior Design',
              icon: Icons.house,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => PortView()));
              },
            ),
            DrawerTiles(
              text: 'Contents',
              icon: Icons.content_copy,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ContentPage()));
              },
            ),
            DrawerTiles(
              text: 'Reviews',
              icon: Icons.rate_review,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ReviewPage()));
              },
            ),
          ],
        ),
      ),
    ));
  }
}

class DrawerTiles extends StatelessWidget {
  const DrawerTiles({
    Key key,
    @required this.text,
    this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final Function press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: SizeConfig.textSize(context, 5.8)),
      title: Text(
        text,
        style: TextStyle(
          fontSize: SizeConfig.textSize(context, 4.5),
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: press,
    );
  }
}
