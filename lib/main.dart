import 'package:flutter/material.dart';
import 'package:market/Cards/time.dart';
import 'package:market/homeScreen.dart';
import 'package:market/pages/homePage.dart';

import 'color/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testing App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: primaryBlack,
      ),
      home: const MyHomePage(title: 'Testing App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
          ),
          title: Text("USD / INR"),
        ),
        body: HomePage()
        //  homeScreen(),
        );
  }
}
