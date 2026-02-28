import 'package:flutter/material.dart';

import 'package:travelappp/pages/home.dart';
import 'package:travelappp/pages/first.dart';
import 'package:travelappp/pages/profile.dart';

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
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Home(),
    
    );
  }
}

