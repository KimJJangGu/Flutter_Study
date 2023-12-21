import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TiltSensor(),
    );
  }
}

class TiltSensor extends StatelessWidget {
  const TiltSensor({super.key});

  @override
  Widget build(BuildContext context) {

    // 그림의 위치를 변경
    final centerX = MediaQuery.of(context).size.width / 2 - 50;
    final centerY = MediaQuery.of(context).size.height / 2 - 50;

    return Scaffold(
      body: Stack(
        children: [
          Positioned( // 그림의 위치를 변경하는 위젯
            left: centerX, // 그림의 위치를 변경
            top: centerY, // 그림의 위치를 변경
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
