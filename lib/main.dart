import 'package:flutter/material.dart';
import 'package:netflix/view/splash_screen/splash.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatefulWidget {
  const Netflix({super.key});

  @override
  State<Netflix> createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
    );
  }
}
