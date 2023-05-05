import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import '../constant.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kMainAccentColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 60, bottom: 30, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: kMainBackgroundColor,
                    radius: 35,
                    child: Icon(Icons.list, size: 50, color: kMainAccentColor),
                  ),
                  const SizedBox(height: 10),
                  const Text('Todoey', style: mainAppTextStyle),
                  Text('${Provider.of<TaskData>(context).tasks.length} Tasks',
                      style: const TextStyle(
                          color: kMainBackgroundColor, fontSize: 18)),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: mainBoxDecoration,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TasksList(),
              ),
            ),
          ],
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => SingleChildScrollView(
                          child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTaskScreen(
                          addTaskCallback: (newTaskTitle) {
                              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                            Navigator.pop(context);
                          },
                        ),
                      )));
            },
            backgroundColor: kMainAccentColor,
            child: const Icon(Icons.add, size: 30),
          ),
        ),
      ),
    );
  }
}
