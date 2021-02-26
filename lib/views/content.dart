import 'package:flutter/material.dart';
import 'package:myportfolio/helpers/responsive.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.lock,
          size: SizeConfig.textSize(context, 20),
        ),
      ),
    );
  }
}
