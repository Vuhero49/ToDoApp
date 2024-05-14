import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];

  //reference the box
  final _mybox = Hive.box('mybox');

  //run this method if this is first time over opening this app
  void createInitialData() {
    todoList = [
      ["Make tutorials", false],
      ["Do exercise", false]
    ];
  }

  //load data from database
  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  //update database
  void updateDatabase() {
    _mybox.put("TODOLIST", todoList);
  }
}
