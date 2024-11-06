import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/options_screen.dart';
import 'package:flutter_application_1/screens/welcome_screen.dart';
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
        //home: HomeScreen(),
        home: OptionsScreen());
  }
}
