import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'name1'),
    Task(name: 'name2'),
    Task(name: 'name3'),
    Task(name: 'name4'),
    Task(name: 'name5'),
    Task(name: 'name6'),
  ];

  void addTask(String data) {
    _tasks.add(Task(name: data));
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  Task getTask(int index) {
    return _tasks[index];
  }

  int get taskCount {
    return _tasks.length;
  }

  void toggleDone(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }
}
