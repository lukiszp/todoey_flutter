import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'name1'),
    Task(name: 'name2'),
    Task(name: 'name3'),
    Task(name: 'name4'),
    Task(name: 'name5'),
    Task(name: 'name6'),
  ];

  void addTask(String data){
    tasks.add(Task(name: data));
    notifyListeners();
  }

  //   void toggleDone() {
  //   isDone = !isDone;
  // }

}