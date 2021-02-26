import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/helpers/responsive.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
              child: Column(
          children: [
            reviewsCard(),
            reviewsCard(),
            reviewsCard(),
            reviewsCard(),
            reviewsCard(),
            reviewsCard(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 150, right: 20),
        child: FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Write a Review'),
            icon: FaIcon(FontAwesomeIcons.handHoldingHeart),
            backgroundColor: Theme.of(context).brightness == Brightness.dark? Colors.blue: null
            ),
      ),
    );
  }

  Widget reviewsCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        elevation: 3,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mr Adedayo',
                style: TextStyle(
                  fontSize: SizeConfig.textSize(context, 5),
                  fontWeight: FontWeight.w500,
                ),
              ),
          SizedBox(height: SizeConfig.yMargin(context, 0.8),),
              Text(
                'Accord Alabata',
                style: TextStyle(
                  fontSize: SizeConfig.textSize(context, 3.5),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: SizeConfig.yMargin(context, 0.3),),
              Text(
                "Our room feels like home now and it's so beautiful. Good job. I like the fact that you paid attention to details and so very easy to work with.Thank you so much",
                style: TextStyle(
                  fontSize: SizeConfig.textSize(context, 3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
