import 'package:flutter/material.dart';
import 'package:flutter_study/23_12_24/todo_list/todo.dart';
import 'package:flutter_study/23_12_24/todo_list/todo_list_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

// await를 신경쓰지 않고 바로 쓸 수 있도록 쉽게 코드 수정, late로 나중에 값을 초기화 하겠다고 선언
// 좋은 방법은 아니나, 앱을 만드는 데에는 지장이 없음
// main의 await Hive.openBox<Todo>('todolist.db'); 에서 값을 초기화
// top level로 선언 했기 때문에 어디서나 사용 가능
late final Box<Todo> todos;

Future<void> main() async {
  // Hive를 초기화 하는 코드 작성
  await Hive.initFlutter();
  // Hive가 Todo라는 객체를 알 수 있도록 알려줘야 함
  Hive.registerAdapter(TodoAdapter());
  //DB를 사용하는 코드, DB를 Box로 표현
  // todos 객체로 DB에 접근 가능
  todos = await Hive.openBox<Todo>('todolist.db');
  // 앱을 실행
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TodoListScreen(),
    );
  }
}
