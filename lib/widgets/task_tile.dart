import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import '../constant.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.index,
  });

  final bool isChecked;
  final String taskTitle;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            color: kMainTextColor,
            fontSize: 20,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: kMainAccentColor,
        value: isChecked,
        onChanged: (newValue) {
          Provider.of<TaskData>(context, listen: false).toggleDone(index);
        },
      ),
    );
  }
}
