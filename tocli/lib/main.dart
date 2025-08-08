import 'package:flutter/material.dart';
import 'package:tocli/start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Tocli',
      home: const StartScreen(),
    );
  }
}
