import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Todo 작성'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.done),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintStyle: TextStyle(color: Colors.grey[300]),
            hintText: '할 일을 입력하세요',
            filled: true,
            fillColor: Colors.white70,
          ),
        ),
      ),
    );
  }
}
