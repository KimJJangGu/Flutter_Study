import 'package:flutter/material.dart';
import 'package:flutter_study/23_12_24/todo_list/create_screen.dart';
import 'package:flutter_study/23_12_24/todo_list/todo_item.dart';
import 'package:flutter_study/23_12_24/todo_list/todo_list_main.dart';

class TodoListScreen extends StatefulWidget {
  // StatelessWidget은 변수나 상수 활용 불가, StatefulWidget은 변수나 상수 활용 가능
  const TodoListScreen({super.key});

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
      body: ListView(
        // 리스트 뷰를 사용해서 어떤 리스트에 있는 값을 변환해서 사용할 때에는 항상 맵 함수를 통해서 원하는 함수로 변환하고 toList()로 리스트 형태로 다시 변환해야 됨
        // main에 있는 todos를 import
        children: todos.values
            .map((e) => TodoItem(
                  todo: e,
                  onTap: (todo) async {
                    todo.isDone = !todo.isDone;
                    await todo.save();

                    // 세이브가 끝나면 갱신
                    // 상태를 업데이트 할 때 사용되는 함수
                    // setState()를 호출하면, 해당 위젯의 build() 함수가 다시 호출되고, UI가 업데이트
                    setState(() {});
                  },
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.blue,
        onPressed: () async {
          // await로 화면이 다시 돌아올 때 까지 기다리게 한다
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateScreen()),
          );

          // 위의 코드를 갔다가 오는 것을 기다림
          setState(() {});
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
