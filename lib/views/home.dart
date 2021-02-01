import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/helpers/responsive.dart';
import 'package:myportfolio/models/viewmodels/imageapi.dart';
import 'package:myportfolio/views/port.dart';
import 'package:myportfolio/widgets/drawer.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _sKey = new GlobalKey();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sKey,
        drawer: PortDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.yMargin(context, 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){_sKey.currentState.openDrawer();},
                    icon: Icon(
                      Icons.dashboard,
                      size: SizeConfig.yMargin(context, 3),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      DynamicTheme.of(context).setBrightness(
                          Theme.of(context).brightness == Brightness.light
                              ? Brightness.dark
                              : Brightness.light);
                    },
                    icon: Icon(
                        Theme.of(context).brightness == Brightness.light
                            ? FontAwesomeIcons.moon
                            : FontAwesomeIcons.solidSun,
                        size: SizeConfig.yMargin(context, 3)),
                  )
                ],
              ),
              SizedBox(height: SizeConfig.yMargin(context, 8)),
              CircleAvatar(
                radius: SizeConfig.yMargin(context, 10),
                backgroundColor: Colors.blue,
              ),
              SizedBox(height: SizeConfig.yMargin(context, 5)),
              Text(
                'Hello, I am Ayomide',
                style: TextStyle(
                    fontSize: SizeConfig.textSize(context, 6),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: SizeConfig.yMargin(context, 1)),
              Text(
                'I am a Flutter Developer, Ui/Ux Designer and Interior Designer',
                style: TextStyle(fontSize: SizeConfig.textSize(context, 3.8)),
              ),
              SizedBox(height: SizeConfig.yMargin(context, 8)),
              GestureDetector(
                onTap: (){
                  Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      PortView()));
         
                },
                              child: Container(
                  width: SizeConfig.xMargin(context, 50), 
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                    decoration: BoxDecoration(
                        color: Colors.yellow[100],
                        borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.center,
                    child: Text(
                      'View Portfolio',
                      style: TextStyle(
                          fontSize: SizeConfig.textSize(context, 4.5),
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow[800]),
                    )),
              ),
              SizedBox(height: SizeConfig.yMargin(context, 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.github,
                      size: SizeConfig.yMargin(context, 2)),
                  SizedBox(width: SizeConfig.xMargin(context, 4)),
                  FaIcon(FontAwesomeIcons.twitter,
                      size: SizeConfig.yMargin(context, 2)),
                  SizedBox(width: SizeConfig.xMargin(context, 4)),
                  FaIcon(
                    FontAwesomeIcons.dribbble,
                    size: SizeConfig.yMargin(context, 2),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
