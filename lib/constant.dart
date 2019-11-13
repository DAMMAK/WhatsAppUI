import 'package:flutter/material.dart';

const Color kPrimaryBackground = Color(0xff1f655d);
const Color kAccentBackground = Color(0xff2c8d82);
const Color kfloatingColor = Color(0xff35c168);
const Color kUserLabelColor = Color(0xff40bf7a);
const Color kLineColor = Color(0xff45827b);
// const ThemeData darkTheme =
//     ThemeData.dark().copyWith(primaryColor: kPrimaryBackground);

const List<String> contextMenu = ["Settings", "About"];
FloatingActionButtonThemeData fabTheme = FloatingActionButtonThemeData(
  backgroundColor: kfloatingColor,
  foregroundColor: Colors.white,
);

// final ThemeData darkTheme = ThemeData(primaryColor: Color(0xff1f655d));

ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Color(0xff1f655d),
    accentColor: Color(0xff40bf7a),
    textTheme: TextTheme(
        title: TextStyle(color: Color(0xff40bf7a)),
        subtitle: TextStyle(color: Colors.white),
        subhead: TextStyle(color: Color(0xff40bf7a))),

    // floatingActionButtonTheme:
    //     FloatingActionButtonThemeData(backgroundColor: Color(0xff40bf7a),),
    appBarTheme: AppBarTheme(color: Color(0xff1f655d)));

ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Color(0xfff5f5f5),
    accentColor: Color(0xff40bf7a),
    textTheme: TextTheme(
        title: TextStyle(color: Colors.black54),
        subtitle: TextStyle(color: Colors.grey),
        subhead: TextStyle(color: Colors.white)),
    appBarTheme: AppBarTheme(
        color: Color(0xff1f655d),
        actionsIconTheme: IconThemeData(color: Colors.white)));

enum ThemeType { Light, Dark }
