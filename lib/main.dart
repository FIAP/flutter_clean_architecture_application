import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_application/screens/categories.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Categories(),
    );
  }
}
