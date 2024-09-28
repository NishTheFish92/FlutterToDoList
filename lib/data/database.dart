import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  final taskbox = Hive.box('mybox');

  //Firstrun
  void createInitialData() {
    toDoList = [
      ["Hello!", false],
      ["Welcome to my App", false]
    ];
  }

  void loadData() {
    toDoList = taskbox.get("Todo");
  }

  void updatedata() {
    taskbox.put("Todo", toDoList);
  }
}
