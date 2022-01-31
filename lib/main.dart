import 'package:cloths/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Usual',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: bgColor,
            textTheme:
                const TextTheme(bodyText2: TextStyle(color: Colors.black54))),
        home: const HomeScreen());
  }
}
