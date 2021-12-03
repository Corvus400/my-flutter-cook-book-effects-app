import 'package:effects_cook_book_app/home.dart';
import 'package:flutter/material.dart';

class FlutterEffectsCookBookApp extends StatelessWidget {
  const FlutterEffectsCookBookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Effects Cook Book App',
      home: Home(),
    );
  }
}
