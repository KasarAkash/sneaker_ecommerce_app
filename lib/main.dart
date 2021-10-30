// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneakers_ecommerce_app/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
