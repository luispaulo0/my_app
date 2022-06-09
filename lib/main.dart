import 'package:flutter/material.dart';
import 'package:my_app/pages/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key})
      : super(key: key); 
  @override //es un decorator
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vista1', 
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home:OnBoarding(),
    );
  }
}
