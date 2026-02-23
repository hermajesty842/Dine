import 'package:dine/pages/homepage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const Dine());
}

class Dine extends StatelessWidget {
  const Dine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black87,
          brightness: Brightness.light,
        ),
      ),
      home: Homepage(),
    );
  }
}
