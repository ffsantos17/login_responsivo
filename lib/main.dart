import 'package:flutter/material.dart';
import 'package:login_responsivo/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Responsivo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TelaLogin(),
    );
  }
}

