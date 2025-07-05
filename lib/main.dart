import 'package:flutter/material.dart';
import 'screens/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stitch UI',
      debugShowCheckedModeBanner: false,
      home: JobLandingScreen(),
    );
  }
}


