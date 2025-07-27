import 'package:flutter/material.dart';
import 'package:git_trial/screens/home_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: HomeScreen(title: "Home screen parameter", onPressed: () {
          print("Button pressed!");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Button was pressed!')),
          );
        },),
      ),
    );
  }
}
