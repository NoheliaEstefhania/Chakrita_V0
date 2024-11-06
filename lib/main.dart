import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(HuertoApp());
}

class HuertoApp extends StatelessWidget {
  const HuertoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Huerto App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

