import 'package:flutter/material.dart';
import 'package:flutter_study/23_12_24/todo_list/todo.dart';
import 'package:flutter_study/23_12_24/todo_list/todo_list_main.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Todo 작성'),
        actions: [
          IconButton(
            onPressed: () async {
              // 끝나면 뒤로가기 기능
              await todos.add(Todo(
                title: _textController.text,
                dateTime: DateTime.now().microsecondsSinceEpoch,
              ));

              if (mounted) {
                // 화면이 잘 표시가 되고 있는지 확인하고 아니면 false
                Navigator.pop(context);
              }
            },
            icon: const Icon(Icons.done),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _textController,
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
