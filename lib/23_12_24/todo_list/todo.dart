import 'package:hive_flutter/adapters.dart';
part 'todo.g.dart';

// Hive라는 데이터 베이스에 저장할 수 있는 객체로 만든다
@HiveType(typeId: 0) // 객체가 여러개 있으면 다른 숫자를 넣어야 함
// DB에 저장해야 되는 객체
class Todo extends HiveObject {
  @HiveField(0)
  int? id;
  
  @HiveField(1)
  String title;
  
  @HiveField(2)
  int dateTime;

  @HiveField(3)
  bool isDone;

  Todo({
    required this.title,
    required this.dateTime,
    this.isDone = false,
  });
}
