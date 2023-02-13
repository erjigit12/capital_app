// ignore_for_file: must_be_immutable
import 'package:country_app/pages/MyHomePage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: iconBool ? darkTheme : lightTheme,
      home: MyHomePage(
        iconBool: iconBool,
        iconLight: iconLight,
        icondark: iconDark,
      ),
    );
  }
}

bool iconBool = false;

IconData iconLight = Icons.wb_sunny;
IconData iconDark = Icons.nights_stay;

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.light,
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.amberAccent,
  ),
);

ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);
