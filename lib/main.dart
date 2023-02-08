import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import './screen/home/home.dart';
import './constants.dart';

void main() async {
  // init hive
  await Hive.initFlutter();

  var box = await Hive.openBox('ToDos');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
