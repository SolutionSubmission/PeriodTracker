import 'package:first_app/screens/bottom_bar.dart';
import 'package:first_app/utils/app_style.dart';
import 'package:flutter/material.dart';


void main() {
  //final name = 'FOO';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary ,
      ),
      home: const bottom_bar(),
    );
  }
}

