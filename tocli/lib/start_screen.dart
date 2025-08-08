import 'package:flutter/material.dart';
import 'package:tocli/navigator.dart';
import 'package:tocli/login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  bool userIsLogin() {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    if (userIsLogin()) {
      return LoginScreen();
    } else {
      return BNavigator();
    }
  }
}
