import 'package:clickeat/clickeat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clickeat/app/app_color.dart';

void main() {
  runApp(ClickEatApp());
}

class ClickEatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
        fontFamily: 'roboto',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        ),
      ),
      home: ClickEat(title: 'ClickEat'),
      initialRoute: ClickEat.id,
      routes: {
        ClickEat.id: (context) => ClickEat(),
      },
    );
  }
}
