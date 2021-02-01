import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/models/viewmodels/imageapi.dart';
import 'package:myportfolio/views/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Images>(
          create: (_) => Images(),
          
          child: DynamicTheme(
          defaultBrightness: Brightness.light,
          data: (brightness) => ThemeData(

        fontFamily: 'BebasNeue',
        primaryColor: Color(0xff263238),
        brightness: brightness ==  Brightness.light
            ? Brightness.light
            : Brightness.dark,
        scaffoldBackgroundColor:brightness ==Brightness.dark ? Colors.blueGrey[900] : Colors.white


          ),

          themedWidgetBuilder: (context,themedata) =>   MaterialApp(
       title: 'Portfolio',
      theme: themedata,
           home: HomeView(),
          ),
        ),
    );
  }
}

