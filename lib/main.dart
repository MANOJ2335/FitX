import 'package:fitx/homepage.dart';
import 'package:flutter/material.dart';
import 'login page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginpage(
      ),

    );
  }
}