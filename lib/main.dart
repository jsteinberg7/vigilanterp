// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sus_logger/constants/theme.dart';
import 'package:sus_logger/screens/mainapp.dart';
import 'package:sus_logger/screens/report.dart';

import 'constants/utilities.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize Firebase
  await Firebase.initializeApp();
  // lock device in portrait mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sus Logger',
      theme: lightTheme,
      home: MainApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
