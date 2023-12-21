import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors_plus/sensors_plus.dart';

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
    // 가로모드
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      // DeviceOrientation.landscapeRight,
    ]);


    // 그림의 위치를 변경
    final centerX = MediaQuery.of(context).size.width / 2 - 50;
    final centerY = MediaQuery.of(context).size.height / 2 - 50;

    return Scaffold(
      body: Stack(
        children: [
          StreamBuilder<AccelerometerEvent>(
            stream: accelerometerEventStream(),
            builder: (context, snapshot) {
              if(!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              final event = snapshot.data!;
              List<double> accelerometerValues = [event.x, event.y, event.z];
              print(accelerometerValues);

              return Positioned( // 그림의 위치를 변경하는 위젯
                left: centerX + event.y * 20, // 그림의 위치를 변경
                top: centerY + event.x * 20, // 그림의 위치를 변경
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  // color: Colors.green, // BoxDecoration은 중복된 컬러를 제거해야 됨
                  width: 100,
                  height: 100,
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
