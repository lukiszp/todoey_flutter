import 'package:flutter/material.dart';
import '../constant.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
  });

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

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
          checkboxCallback();
        },
      ),
    );
  }
}
