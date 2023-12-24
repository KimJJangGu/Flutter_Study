import 'package:flutter/material.dart';
import 'package:flutter_study/23_12_24/todo_list/create_screen.dart';
import 'package:flutter_study/23_12_24/todo_list/todo.dart';
import 'package:flutter_study/23_12_24/todo_list/todo_list_main.dart';

class TodoListScreen extends StatefulWidget {
  // StatelessWidget은 변수나 상수 활용 불가, StatefulWidget은 변수나 상수 활용 가능

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        backgroundColor: Colors.blue,
      ),
      body: ListView( // 리스트 뷰를 사용해서 어떤 리스트에 있는 값을 변환해서 사용할 때에는 항상 맵 함수를 통해서 원하는 함수로 변환하고 toList()로 리스트 형태로 다시 변환해야 됨
        // main에 있는 todos를 import
        children: todos.values
            .map(
          (todo) => ListTile(
            title: Text(todo.title),
            subtitle: Text('${todo.dateTime}'),
          )).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateScreen()),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
