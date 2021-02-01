import 'package:flutter/material.dart';
import 'package:myportfolio/helpers/responsive.dart';

class PortDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
       
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerTiles(
              text: 'Mobile',
              icon: Icons.phone,
              press: () {},
            ),
            DrawerTiles(
              text: 'UI/UX Design',
              icon: Icons.design_services,
              press: () {},
            ),
            DrawerTiles(
              text: 'Interior Design',
              icon: Icons.house,
              press: () {},
            ),
            DrawerTiles(
              text: 'Contents',
              icon: Icons.content_copy,
              press: () {},
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
