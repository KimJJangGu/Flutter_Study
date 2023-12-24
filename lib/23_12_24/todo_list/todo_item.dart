import 'package:flutter/material.dart';
import 'package:flutter_study/23_12_24/todo_list/todo.dart';
import 'package:intl/intl.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final Function(Todo) onTap;

  const TodoItem({
    Key? key,
    required this.todo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // 여기서 수행 할 내용을 다른 파일에서 수행하도록 만들어준다
        // 리스트 타일을 클릭하면 onTap 함수에게 todo를 전달
        onTap(todo);
      },
      // 조건을 넣어서 체크 상태를 표시
      leading: todo.isDone
          // todo.isdone이 true면 아래의 조건을 수행
          ? const Icon(
              Icons.check_box_outlined,
              color: Colors.blue,
            )
          // flase라면 아래의 조건을 수행
          : const Icon(
              Icons.check_box_outline_blank,
              color: Colors.blue,
            ),
      title: Text(
        todo.title,
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      subtitle: Text(
        DateFormat.yMMMMd().format(DateTime.fromMicrosecondsSinceEpoch(todo.dateTime)),
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
    );
  }
}
