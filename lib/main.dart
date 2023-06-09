import 'package:flutter/material.dart';
import 'package:themoviedb/money.dart';
import 'package:themoviedb/presentation/home/menu.dart';
import 'package:themoviedb/timeKonvert.dart';
import 'presentation/home/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}