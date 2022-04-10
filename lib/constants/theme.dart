import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: Colors.grey[50],
  primarySwatch: MaterialColor(
    0xFFE7E7E7,
    <int, Color>{
      50: Color.fromARGB(26, 223, 247, 248),
      100: Color.fromARGB(26, 199, 230, 231),
      200: Color.fromARGB(26, 187, 223, 224),
      300: Color.fromARGB(26, 173, 206, 207),
      400: Color.fromARGB(26, 153, 186, 187),
      500: Color.fromARGB(26, 161, 193, 194),
      600: Color.fromARGB(26, 152, 179, 180),
      700: Color.fromARGB(26, 124, 152, 153),
      800: Color.fromARGB(26, 95, 139, 141),
      900: Color.fromARGB(26, 64, 116, 117),
    },
  ),
  primaryColor: Color.fromARGB(255, 179, 225, 237),
  primaryColorLight: Color.fromARGB(255, 179, 225, 237),
  primaryColorDark: Color(0xff936F3E),
  canvasColor: Color.fromARGB(255, 191, 200, 202),
  scaffoldBackgroundColor: Colors.grey[50],
  bottomAppBarColor: Color.fromARGB(255, 0, 0, 0),
  appBarTheme: AppBarTheme(color: Colors.grey[50]),

  cardColor: Colors.white,
  dividerColor: Color(0x1f6D42CE),
  focusColor: Color(0x1aF5E0C3),
  textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.red[500]),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
    backgroundColor:
        MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      return Colors.white;
    }),
  )),
  // , buttonTheme: ButtonTheme()
);
