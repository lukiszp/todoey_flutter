import 'package:flutter/material.dart';
import '../constant.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'task 1',
        style: kListTextStyle,
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {
          value = !value!;
        },
      ),
    );
  }
}
