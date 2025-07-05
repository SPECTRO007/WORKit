import 'package:flutter/material.dart';
import 'screens/registration.dart';
import 'screens/jobsplit.dart';
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
      home: Jobsplit(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CreateAccountPage()),
            );
          },
          child: const Text("Go to Create Account"),
        ),
      ),
    );
  }
}
