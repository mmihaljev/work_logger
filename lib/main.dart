import 'package:flutter/material.dart';
import 'package:work_logger/presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.black87,
        canvasColor: Colors.black87,
        fontFamily: 'Roboto',
      ),
      routes: {
        '/': (context) => const HomePage()
      },
    );
  }
}