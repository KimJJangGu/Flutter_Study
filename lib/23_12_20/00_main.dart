import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppdsafsad());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required String title});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyApp(title: 'Flutter Demo Home Page'),
    );
  }
}