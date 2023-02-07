import 'package:flutter/material.dart';

import './screen/home/home.dart';
import './constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kPrimarySwatch,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const Home(),
    );
  }
}
