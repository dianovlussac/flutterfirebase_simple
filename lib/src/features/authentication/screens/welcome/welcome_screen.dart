import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Text(
        "Welcome!",
        style: TextStyle(color: Colors.black87),
        textAlign: TextAlign.center,
      ),
    );
  }
}
