import 'package:flutter/material.dart';
import 'package:ownback/view/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ownback',

      home: const Auth(),
    );
  }
}
