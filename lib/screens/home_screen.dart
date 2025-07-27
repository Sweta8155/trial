import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  final String title;
  final Color textColor;
  const HomeScreen({super.key, required this.title, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${title}"),
      ),
      body: Center(
        child: Text(
          'Welcome to the Home Screen!',
          style: TextStyle(fontSize: 24, color: textColor),
        ),
      ),
    );
  }
}
