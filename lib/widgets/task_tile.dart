import 'package:flutter/material.dart';
// import 'package:dailytodo_flutter/modals/task.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack});

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;

  // void currentCheckState

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 18,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          checkBoxCallBack(newValue);
        },
      ),
    );
  }
}
