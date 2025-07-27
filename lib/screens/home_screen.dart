import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const HomeScreen({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${title}"),
      ),
      body: Center(
        child: GestureDetector(
          child: Text(
            'Welcome to the Home Screen!',
            style: TextStyle(fontSize: 24),
          ),
          onTap: onPressed ?? () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('You tapped the text!')),
            );
          },
        ),
      ),
    );
  }
}
