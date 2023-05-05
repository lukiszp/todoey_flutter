import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.getTask(index);
          return Dismissible(
            key: UniqueKey(),
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.red,
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.delete,
                  color: kDefaultIconLightColor,
                  size: 30,
                ),
              ),
            ),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {
              taskData.deleteTask(index);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                index: index,
              ),
            ),
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
