import './widget.dart/button1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exam Practices',
      home: const MyApp(),
      theme: ThemeData(
        textTheme: const TextTheme().copyWith(
          bodyText2: const TextStyle(color: Colors.white),
          bodyText1: const TextStyle(color: Colors.amber),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.orange,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Exam Practices'),
        ),
        backgroundColor: Color(0xFF101336),
        body: Practice());
  }
}