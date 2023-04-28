// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/live.dart';
import 'pages/instant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //the first page to appear
      initialRoute: '/',
      //assign every page to a route
      routes: {
      '/': (context) => const MyHomePage(),
      '/livepage': (context) => const LivePage(),
      '/instantpage': (context) => const InstantPage(),
      },
      
    );
  }
}

